# 🔐 Gerenciamento de Permissões e Administração de Usuários no Linux

## 🧠 Objetivo

Este projeto simula um ambiente de trabalho para uma equipe de pesquisa dentro de uma organização. O objetivo é aplicar práticas reais de administração de sistemas e segurança da informação utilizando comandos básicos do Linux.  

Aprendi e demonstrei como:

- Criar e gerenciar arquivos e diretórios com segurança
- Definir permissões com `chmod` e `chown`
- Gerenciar usuários e grupos
- Pesquisar e manipular conteúdo com comandos de leitura
- Automatizar tarefas com pipes (`|`) e filtros

---

## 🧪 Cenário Prático

Você é um administrador de sistemas responsável por configurar e proteger o ambiente de pesquisa da empresa. Veja os passos realizados:

---

### ✅ 1. Verificar o diretório atual

```bash
pwd

 📂2. Criar diretórios para projetos

mkdir /home/research
cd /home/research
mkdir projects drafts archived

📄3. Criar e editar arquivos

cd projects
touch report.txt 
data.csv 
.secret_plan.txt 
nano report.txt

🔍4. Verificar arquivos e permissões

ls -la

🔐5. Atualizar permissões

chmod 640 report.txt
chmod 440 .secret_plan.txt

📘 Explicação:
Os números 640 e 440 representam permissões em formato octal, definindo quem pode ler, escrever ou executar:

Octal	Permissão	Significado
4	r	Leitura
2	w	Escrita
1	x	Execução

chmod 640 report.txt

Dono: 6 (4+2) → leitura e escrita

Grupo: 4 → somente leitura

Outros: 0 → nenhum acesso

chmod 440 .secret_plan.txt

Dono: 4 → somente leitura

Grupo: 4 → somente leitura

Outros: 0 → nenhum acesso


👤6. Gerenciar usuários e grupos

sudo useradd researcher1 -m -G research
sudo chown researcher1:research report.txt

🧾7. Visualizar e buscar conteúdo

cat report.txt
head report.txt
tail report.txt
less report.txt
grep "confidencial" report.txt
cat report.txt | grep "dados"

📦8. Copiar, mover e excluir arquivos

cp report.txt ../drafts/
mv data.csv ../archived/
touch temp.log
rm temp.log
rmdir empty_folder

🔎9. Encontrar arquivos

find /home/research -name "*.txt"

🙋‍♂️10. Identificar usuário e buscar ajuda

whoami
whatis chmod
man chmod
apropos permissions

❌11. Remover usuários e grupos

sudo userdel researcher1
sudo groupdel research

📝 Resumo
Este exercício cobre o uso de mais de 25 comandos essenciais do Linux para:

Segurança (permissões, usuários, grupos)

Manipulação de arquivos

Busca e visualização de conteúdo

Automatização com pipes

Gerenciamento de ambiente

Com este projeto, demonstro domínio prático e organizado do terminal Linux — uma habilidade essencial para profissionais de infraestrutura, DevOps e segurança.