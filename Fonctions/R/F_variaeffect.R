#' @title variaeffect
#'
#' @description Fonction permettant de tracer l'effet des 4 variables les plus importantes de la sortie d'un mod�le type Random forest, GBM ou Cubist
#' 
#' @param grille: grille contenant les combinaisons des valeurs des 4 variables les plus importantes
#' @param vNames : liste contenant le nom des autres variables pr�dictives
#' @param data: base de donn�es
#' @param model : mod�le � utiliser pour la pr�diction
#' @param nameModel : nom du mod�le utilis�, gbm, rf ou cubist
#' @param neighbors : param�tre � renseigner pour la pr�diction si le mod�le utilis� est cubist, 0 par d�faut   
#' @param repsortie : R�pertoire pour exporter la figure (XX/XX/)
#' @param nomsortie : Nom de la figure 
#'
#' @author Jean-Baptiste Paroissien
#' @output Trace sur une m�me page les graphiques repr�sentant l'effet de variables sur la pr�diction d'une certaine variable

variaeffect <- function(grille,
                        vNames,
                        data,
                        model,
                        nameModel,
                        neighbors=0)
{
   
  #require(ggplot2)
  #require(gbm)
  #require(randomForest)
  require(Cubist)
 
  lgrille <- length(grille)

  # On rajoute � la grille les autres variables (vNames) en leur attribuant la valeur m�diane:
  for (v in vNames){
    if (is.factor(d[,v])==TRUE){
      t = table(d[,v])
      ft = t[order(t,decreasing=T)]
      grille[,v] <- d[d[,v]==names(ft[1]),v][1]
    }else{
      grille[,v] <- median(d[,v])
    }
  }
 
  # Pr�diction:
  if (nameModel == "gbm"){
    best.iter <- gbm.perf(model,method="cv")
    pred <- predict(model,grille,best.iter)
  }else if (nameModel == "rf"){
    pred <- predict(model,grille)
  }else if (nameModel == "cubist"){
    pred <- predict(model,grille,neighbors = neighbors)
  }
 
  # On ajoute � la grille les valeurs pr�dites.
  grille$pred <- pred
  
  # Nom de figure en fonction de length(grille)
  p <- list()
  for(i in 1:lgrille){
    predVar <- aggregate(pred,by=list(grille[,i]),median)
    colnames(predVar) <- c(names(grille)[i],"pred")
    attach(predVar)
  
    if (is.factor(grille[,i])==TRUE){
      p[[i]] <- ggplot(predVar,aes_string(names(grille)[i],"pred")) + 
              geom_point() + geom_boxplot() + geom_smooth(aes(group=1)) + 
              theme(axis.text.x  = element_text(angle=90, vjust=1, size=12)) +
              xlab(names(predVar)[1]) + ylab(paste("f(",names(predVar)[1],")",sep="")) + theme_perso()
      }else{
        p[[i]] <- ggplot(predVar,aes_string(names(grille)[i],"pred")) + 
                 geom_point() + geom_smooth() + 
                 xlab(names(predVar)[1]) + ylab(paste("f(",names(predVar)[1],")",sep="")) + theme_perso()
      }
  }
return(list(pgrille=p))
}
