# Como usar os scripts
#!/bin/bash

# Dar permissão de execução aos scripts
chmod +x scripts/*.sh

# Executar na ordem:
./scripts/setup_environment.sh
./scripts/permission_config.sh
./scripts/user_management.sh

# Limpar se necessário:
./scripts/cleanup.sh