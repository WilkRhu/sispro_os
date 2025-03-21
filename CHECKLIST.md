# Checklist - Fluxo do Sistema de Ordem de Serviço

## 1. Criação da Ordem de Serviço
Ação: O cliente ou usuário cria uma nova ordem de serviço.

### Entrada: O cliente preenche um formulário com informações detalhadas:

### Descrição do problema
Tipo de serviço solicitado (manutenção, instalação, suporte, etc.)
Urgência
Data e horário preferidos (se aplicável)
Anexar imagens ou documentos (se necessário)
Validação: Verificar se todos os campos obrigatórios foram preenchidos.

### Ação Pós-Criação:

Gerar um número de ordem de serviço único (ID).
Atribuir a ordem de serviço a uma equipe ou técnico disponível.
Enviar uma confirmação de recebimento para o cliente (e-mail ou SMS).
2. Atribuição e Aprovação
Ação: O sistema notifica os administradores ou gerentes para aprovar ou ajustar a ordem de serviço.

##### Entrada: O administrador pode revisar as informações fornecidas, atribuir um técnico específico ou mudar o status para "Em Aprovação".

### Ação Pós-Aprovação:

O administrador pode aprovar ou rejeitar a OS.
Se aprovado, o status da OS é alterado para "Aprovado" ou "Em Progresso", e o técnico é notificado.
Se rejeitado, o cliente é notificado com a justificativa.
3. Execução da Ordem de Serviço
Ação: O técnico recebe a ordem de serviço e inicia o trabalho.

### Entrada: O técnico pode acessar todos os detalhes da OS, como:

Descrição do problema
Instruções do cliente
Histórico de comunicação
Materiais necessários (se forem fornecidos pelo cliente ou pela empresa)
Ação: O técnico registra o progresso:

Iniciar o serviço
Registrar ações tomadas, materiais usados, tempo gasto
Caso necessário, atualizar o cliente sobre o andamento (via chat, e-mail, etc.)
Status: Durante a execução, o status da OS pode ser alterado para "Em andamento" ou "Pendente aprovação do cliente" (se o cliente precisar aprovar etapas do serviço).

## 4. Finalização do Serviço
Ação: O técnico finaliza o serviço e insere os detalhes finais.

### Entrada: Detalhamento de:

O que foi feito
Tempo total gasto
Materiais consumidos
Custos extras (se houver)
Comentários ou observações
Ação Pós-Finalização:

Gerar uma fatura (se aplicável).
Enviar uma notificação de conclusão para o cliente.
O cliente pode aprovar ou solicitar ajustes, caso esteja insatisfeito.

## 5. Avaliação e Feedback
### Ação: O cliente avalia o serviço.

### Entrada: O cliente pode preencher uma pesquisa de satisfação ou dar uma nota para o serviço.

Ação Pós-Avaliação:

Armazenar as avaliações para melhorar os serviços futuros.
Registrar a OS como "Concluída" e arquivar para relatórios e análise.

## 6. Relatórios e Análises
Ação: O sistema pode gerar relatórios baseados nas ordens de serviço:
Número de ordens abertas vs. finalizadas.
Tempo médio de resolução.
Custos totais de materiais e mão de obra.
Feedback do cliente.

###############################################################

- ### Criação de Tipos de Usuário
    - [] Criar usuário [Admin, Atendente, Cliente]
    - [] Criação de autenticação de usuário