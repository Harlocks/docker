#!/bin/bash

cont_backup="backup"
cont_origem="database"

clear
docker run -it --name backup --volumes-from database -v "$(pwd)":/backup ubuntu tar cvf /backup/backup.tar /volumes &&
  echo "O backup do container $cont_origem foi um sucesso"

