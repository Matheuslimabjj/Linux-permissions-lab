#!/bin/bash
# user_management.sh - Cria e configura usuários e grupos
# Cria usuário, grupo e define propriedade dos arquivos.

echo "[+] Criando grupo 'research'..."
sudo groupadd research

echo "[+] Criando usuário 'researcher1'..."
sudo useradd researcher1 -m -G research

echo "[+] Alterando proprietário dos arquivos..."
sudo chown researcher1:research /home/research/projects/report.txt

echo "[+] Usuário e permissões configurados."
