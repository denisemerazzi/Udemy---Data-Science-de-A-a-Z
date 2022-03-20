### VERSIONAMENTO DE DADOS - Udemy/Mafra

Sincronizar os dados em CSV com a Tabela WRK (sincroniza o CSV com WRK e utiliza o RAW para comparar com o WRK):

a) *Sequence container (FASE 01 CSV TO RAW)*: Data file source - conecta na fase 2 (se tudo estiver certinhom, truncar a tabela na fase 1: Tarefa executar SQL. Conection. 

SQLstatement: 

    TRUNCATE TABLE RAW_PRODUTOS_ESTOQUE)

Sincronização e versionamento

<img src="img/sincronizacao_e_versionamento_fase_1.png" alt="Sincronização e versionamento">


b) (FASE 02 RAW TO WRK) - Data file source

c) Merge join  (obs: sempre lembrar de colocar RAW e WRK para diferenciar a origem das colunas). Sempre escolher o tipo JOIN LEFT OUTER (JOIN - ESQUERDA)

<img src="img/fluxo_merge_join.png" alt="Fluxo Merge Join">

d) Configuração da tabela derivada (Insert, update, histórico)

<img src="img/Configuracao_da_tabela_derivada.png" alt="Configuração de Tabela Derivada">


e) Conditional Split (Divisão condicional) - 
Insert:

    ISNULL([CODIGO_WRK]) &&! ISNULL([CODIGO_RAW])

Update: 

    [DESC_PROUTO_WRK] != [DESC_PROUTO_RAW] || [DESC_ABV_RAW] != [DESC_ABV_WRK] && ISNULL([V_FIMVIGENCIA])

Historico:

    [Unidades_RAW] != [Unidades _WRK] && ISNULL([FIM_VIGENCIA_WRK])

Comandos:

- Diferente (!=)
- Ou (||)
- e (&&)

<img src="img/Editor_de_transformação_condicional.png" alt="Editor de transformação condicional">


f) Registros novos (OLE DB Destination): 

    Fluxo de insert Conditional Split insert OLE DB Destination (Regitros novos)

<img src="img/OLE_DB_registros_novos.png" alt="Registros novos_OLE_DB">

g) Update simples
Registros novos update OLDE DB Comand (Update simples)