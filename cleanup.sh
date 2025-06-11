#!/bin/bash
# cleanup.sh - Remove arquivos, diretórios e usuários criados
# Remove tudo (útil para resetar o ambiente durante testes).

echo "[+] Limpando ambiente..."

sudo userdel -r researcher1 2>/dev/null
sudo groupdel research 2>/dev/null

rm -rf /home/research

echo "[+] Ambiente limpo com sucesso."
