#!/bin/bash
# autoupgrade.sh
# Script para atualizar containers utilizando Docker Compose.
#
# Certifique-se de que o arquivo docker-compose.yml esteja no diretório atual
# ou ajuste o caminho conforme necessário.

echo "======================================"
echo "Iniciando atualização dos containers: $(date)"
echo "======================================"

# Diretorio onde esta o docker-compose.yaml
cd /root

# Atualiza as imagens dos containers
docker compose pull

# Derruba os containers atuais
docker compose down

# Sobe os containers em modo detach
docker compose up -d

if [ $? -eq 0 ]; then
    echo "Atualização concluída com sucesso: $(date)"
else
    echo "Ocorreu um erro durante a atualização: $(date)"
fi

exit 0