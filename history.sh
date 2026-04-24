   Problema 1
   9  mv kepler/docs kepler/registros
   10  ls -R kepler
   11  ls -F
   12  mv evaluation/kepler/docs evaluation/kepler/registros
   13  mkdir evaluation/kepler/plantillas
   14  ls evaluation/kepler/
   15  git add .
   16  git commit -m "Fix problema 1: estructura de directorios corregida"
   17  history
   Problema 2
   18  mv evaluation/kepler/sensores.log evaluation/kepler/registros/
   19  mv evaluation/kepler/ajustes.old evaluation/kepler/ajustes.conf
   20  git add .
   21  ls -R evaluation/kepler
   22  git add .
   23  git commit -m "Fix problem 2: files moved and renamed"
   24  history
   Problema 3
   25  chmod 640 evaluation/kepler/registros/sensores.log
   26  ls -l evaluation/kepler/registros/sensores.log
   27  git add .
   28  git commit -m "Fix problem 3: numeric permissions 640 on sensorials.log"
   29  history
   Problema 4
   30  chmod u+x evaluation/kepler/runner.sh
   31  chmod o-w evaluation/kepler/ajustes.conf
   32  ls -l evaluation/kepler/runner.sh
   33  ls -l evaluation/kepler/ajustes.conf
   34  git add .
   35  git commit -m "Fix problem 4: symbolic permissions corrected"
   36  history
   Problema 5
    37  chmod u+s evaluation/kepler/runner.sh
   38  ls -l evaluation/kepler/runner.sh
   39  git add .
   40  git commit -m "Fix issue 5: SUID enabled in runner.sh"
   41  history
   Problema 6
   