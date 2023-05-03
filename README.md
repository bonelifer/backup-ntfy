# backup-ntfy

Este script em lote tem como objetivo realizar um backup de arquivos de uma pasta específica e enviar uma notificação via API do ntfy.sh informando se o backup foi concluído com sucesso ou não.

O usuário deve definir o caminho da pasta de origem e destino através das variáveis "origem" e "destino". Em seguida, o comando "xcopy" é utilizado para copiar todos os arquivos e subpastas da pasta de origem para a pasta de destino.

Após a conclusão do backup, o script verifica o valor do "errorlevel". Se o valor for igual a zero, significa que o backup foi concluído com sucesso e uma requisição POST é enviada para a API do ntfy.sh com a mensagem "Backup concluído". Caso contrário, uma requisição POST é enviada com a mensagem "Backup não concluído".

Para utilizar este script, é necessário ter o "curl" instalado no sistema e uma conexão com a internet. O script pode ser executado em sistemas operacionais Windows que suportem scripts em lote. É importante lembrar que as informações de autenticação para a API do ntfy.sh devem ser configuradas previamente.
