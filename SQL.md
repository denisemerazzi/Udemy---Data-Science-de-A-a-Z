1. IMPORTÂNCIA DE APRENDER SQL

a) Hadoop: Hive SQL (ferramenta que compoe o Hadoop) - Permite a consulta de dados não estruturados via SQL. Faz uma interface entre os usuários e os dados não estruturados. A necessidade se encontra na consulta de Big Data.
b) SQL Server - (Pacote com várias ferramentas englobadas) - Características:  
* Polibase: "É um tradutor" entre os documentos não estruturados e a linguagem T-SQL. Permite a conexão, para os usuários fazer querys e obter resultados na linguagem T-SQL, em bases Hadoop ou Texto (BLObs do Azure). Acessa dados de fora do Banco de Dados por meio da linguagem  T-SQL. Na versão 2016, permite consultar dados externos no Hadoop ou importar e exportar dados de armazenamento no Blobs do Azure (Nuvem) e as consultas são otimizadas pelo Hadoop. Integração nativa das linguagens R e Phyton. Integração com ferramentas de BI (que podem ser aproveitadas para DataScience).
* Ferramentas de BI:
  a) Integration Services: Ferramenta de ETL (Extrair, transformar e carregar os dados), responsável pela extração, integração e carga de dados. Os dados não estruturados partem de diversas fontes e são transportados para um cluster (trabalhar com hadoop), para fazer esse carga utiliza-se a ferramenta ETL.
  b) Analysis Services: Ferramenta de análise de DW através de cubos OLAP
  c) Reporting Services: Disponibiliza relatórios via web. 

  * Ciclo de Vida de Data Science no SQL Server:
* 1) Dados puros (Background - organizar os dados)
* 2) ETL - tratamento de dados: extrai de uma fonte e transforma os dados e carrega os dados em outra fonte. No caso do BI, retira do Banco relacional e grava no DW. Faz análise e entrega para o usuário visualização para insights. No Datasciencie e BI: no ETL, utiliza o Integration Services
* 3) DW (Data WareHouse - BI): No Datascience retira o DW e pode utilizar qualquer banco (csv, txt)
* 4) Análise: BI: Utiliza o Analysis services (faz a sumarização: economiza memória). No Datascience: Utiliza-se phyton e R. Aplica-se o algoritmo, Machine Learning.
* 5) Visualização: BI - reporting Services. Datascience utiliza o Tableau e PowerBI
* 6) Reutilização do ciclo
  
  * ANÁLISES QUE SE COMPLEMENTAM:
  * BI: Análise descritiva (o que aconteceu?) e análise diagnóstica (Porquê aconteceu?) = Entende o passado
  * Datascience: Análise preditiva (o que vai acontecer) e prescritiva (o que possso fazer?) = Tenta planejar o futuro ("prever")

  