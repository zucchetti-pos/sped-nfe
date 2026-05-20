# sped-nfe — Constituição do Módulo

> SDK PHP para geração e comunicação de NF-e e NFC-e com SEFAZ. SDK externo — não modificar sem aprovação.

## Identidade
- Módulo: sped-nfe — Emissão e comunicação de NF-e/NFC-e com SEFAZ
- Fork: `zucchetti-pos/sped-nfe` (base: `nfephp-org/sped-nfe`)
- Parte do monorepo: zweb-projects

## Stack
- **Linguagem:** PHP ≥7.4
- **Dependências:** `nfephp-org/sped-common`, `nfephp-org/sped-gtin`, `justinrainbow/json-schema`
- **Extensões PHP obrigatórias:** zlib, dom, openssl, soap, json, simplexml, libxml
- **Testes:** PHPUnit 9 + phpcs + phpstan + PHP Compatibility
- **Gerenciador:** Composer

## Estrutura de pastas
```
sped-nfe/
├── src/           # Código-fonte (PSR-4: NFePHP\NFe)
├── tests/         # Testes PHPUnit
├── docs/          # Documentação
├── examples/      # Exemplos de uso
├── schemes/       # Schemas XSD da NF-e (normativos)
├── fake/          # Dados fictícios para testes
└── storage/       # Armazenamento temporário
```

## Comandos do projeto
```bash
# Instalar dependências
composer install

# Executar testes
vendor/bin/phpunit -c phpunit.xml.dist

# Testes com cobertura
vendor/bin/phpunit -c phpunit.xml.dist --coverage-clover=coverage.xml

# Lint
vendor/bin/phpcs src/
vendor/bin/phpcbf src/

# Análise estática
vendor/bin/phpstan analyse src/ --memory-limit=2048M
```

## Restrições
- **CRÍTICO:** Comunicação com SEFAZ não pode ser quebrada em nenhum deploy
- SDK externo (fork) — modificações exigem aprovação explícita
- PHP mínimo: 7.4
- Certificados digitais (A1/A3) e chaves privadas nunca em logs ou código
- Schemas XSD em `schemes/` são normativos — não alterar sem validação fiscal
