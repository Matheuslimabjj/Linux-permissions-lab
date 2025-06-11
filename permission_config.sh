#!/bin/bash
# setup_environment.sh - Cria a estrutura de diretórios e arquivos
# Aplica permissões seguras aos arquivos e diretórios.

echo "[+] Criando estrutura de diretórios..."
mkdir -p /home/research/{projects,drafts,archived}

echo "[+] Criando arquivos..."
cd /home/research/projects
touch report.txt data.csv .secret_plan.txt

echo "[+] Adicionando conteúdo a report.txt..."
echo "Relatório confidencial do projeto X" > report.txt

echo "[+] Ambiente criado com sucesso."
