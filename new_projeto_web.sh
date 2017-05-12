#!/bin/sh

#Paulo Cauca 
#Script para criar uma estrutura de projeto inicial

#/Users/paulocauca/Projetos/ShellScript/new_projeto_web.sh /Applications/MAMP/htdocs fpjjb


# Projeto em PHP 

dirProjeto=$1
nomeProjeto=$2



function preparaEstrutura(){
   
   mkdir $dirProjeto/$nomeProjeto
   cd $dirProjeto/$nomeProjeto
   
   mkdir -p php/config php/objects sources/css sources/fonts sources/img sources/js sources/js/assets views
   
}

function preparaDownloads(){
     cd $dirProjeto/$nomeProjeto/sources/js/assets/
     
     wget https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.js
     wget https://code.jquery.com/jquery-3.2.1.min.js
     
     cd $dirProjeto/$nomeProjeto/sources/
     curl -LJO  https://github.com/twbs/bootstrap/releases/download/v3.3.7/bootstrap-3.3.7-dist.zip
     unzip bootstrap-3.3.7-dist.zip
     
     mv bootstrap-3.3.7-dist/css/* css/
     mv bootstrap-3.3.7-dist/fonts/* fonts/
     mv bootstrap-3.3.7-dist/js/* js/assets/
     
     rm -rf bootstrap-3.3.7-dist*
     
   
}


preparaEstrutura
preparaDownloads



