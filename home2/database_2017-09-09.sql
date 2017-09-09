# MySQL-Front Dump 2.5
#
# Host: localhost   Database: tuatec_bd01
# --------------------------------------------------------
# Server version 5.0.27-community-log

USE tuatec_bd01;


#
# Table structure for table 'ateliedirany_ofertas'
#

DROP TABLE IF EXISTS ateliedirany_ofertas;
CREATE TABLE IF NOT EXISTS ateliedirany_ofertas (
  ID int(7) unsigned NOT NULL auto_increment,
  Ofertador varchar(100) NOT NULL DEFAULT '' ,
  Quadro varchar(75) NOT NULL DEFAULT '' ,
  Valor bigint(15) unsigned NOT NULL DEFAULT '0' ,
  OcultarOfertador enum('0','1') NOT NULL DEFAULT '0' ,
  Quando datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  PRIMARY KEY (ID)
);



#
# Dumping data for table 'ateliedirany_ofertas'
#



#
# Table structure for table 'ateliedirany_quadros_leiloados'
#

DROP TABLE IF EXISTS ateliedirany_quadros_leiloados;
CREATE TABLE IF NOT EXISTS ateliedirany_quadros_leiloados (
  ID tinyint(3) unsigned NOT NULL auto_increment,
  Nome varchar(75) NOT NULL DEFAULT '' ,
  Video varchar(255) ,
  LanceInicial bigint(15) unsigned NOT NULL DEFAULT '0' ,
  FinalDoLeilao date NOT NULL DEFAULT '0000-00-00' ,
  PRIMARY KEY (ID)
);



#
# Dumping data for table 'ateliedirany_quadros_leiloados'
#

#
# Table structure for table 'conserte_clientes'
#

DROP TABLE IF EXISTS conserte_clientes;
CREATE TABLE IF NOT EXISTS conserte_clientes (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  Nome_completo varchar(100) NOT NULL DEFAULT '' ,
  Se_Aceito enum('1','0') NOT NULL DEFAULT '1' ,
  Sexo enum('Masculino','Feminino') NOT NULL DEFAULT 'Masculino' ,
  RG varchar(15) ,
  CPF varchar(11) ,
  Endereco_de_cobranca longtext NOT NULL DEFAULT '' ,
  Telefone varchar(30) NOT NULL DEFAULT '' ,
  EMail varchar(50) ,
  Nascimento varchar(10) ,
  Observacoes longtext ,
  Credito_usado varchar(10) NOT NULL DEFAULT '0' ,
  Credito_maximo varchar(10) NOT NULL DEFAULT '0' ,
  Ultima_cobranca varchar(10) ,
  Nome_do_representante varchar(100) ,
  Telefone_do_representante varchar(30) ,
  Quando_Salvo varchar(10) ,
  Quando_Alterados varchar(10) ,
  PRIMARY KEY (Empresa,Nome_completo)
);



#
# Dumping data for table 'conserte_clientes'
#


#
# Table structure for table 'conserte_configuracoes'
#

DROP TABLE IF EXISTS conserte_configuracoes;
CREATE TABLE IF NOT EXISTS conserte_configuracoes (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  Endereco longtext NOT NULL DEFAULT '' ,
  Site varchar(255) ,
  EMail varchar(50) ,
  Telefone varchar(50) ,
  Logotipo varchar(255) DEFAULT 'imagens/templantes/logotipo_conserte.gif' ,
  Logomarca varchar(100) ,
  Saldacao varchar(100) NOT NULL DEFAULT 'Seja bem vindo!' ,
  Cabecalho varchar(255) NOT NULL DEFAULT 'imagens/templantes/cabecalho01.jpg' ,
  Atendente varchar(255) NOT NULL DEFAULT 'imagens/templantes/atendente01.jpg' ,
  JurosDoPrazo float NOT NULL DEFAULT '5' ,
  Cor_das_bordas varchar(6) NOT NULL DEFAULT 'CCCCCC' ,
  Cor_do_cabecalho varchar(6) NOT NULL DEFAULT '3366FF' ,
  Cor_de_testo_do_cabecalho varchar(6) NOT NULL DEFAULT 'FFFFFF' ,
  Cor_do_titulo varchar(6) NOT NULL DEFAULT '3366FF' ,
  Cor_de_testo_do_titulo varchar(6) NOT NULL DEFAULT 'FFFFFF' ,
  Cor_do_menu varchar(6) NOT NULL DEFAULT '3366FF' ,
  Tipo_de_botao_do_menu char(2) NOT NULL DEFAULT '01' ,
  Cor_de_testo_ativo_do_menu varchar(6) NOT NULL DEFAULT 'FFFFFF' ,
  Cor_de_testo_inativo_do_menu varchar(6) NOT NULL DEFAULT '3366FF' ,
  Cor_do_corpo varchar(6) NOT NULL DEFAULT 'FFFFFF' ,
  Cor_de_testo_do_corpo varchar(6) NOT NULL DEFAULT '000000' ,
  Cor_de_testo_especial varchar(6) NOT NULL DEFAULT '3366FF' ,
  Cor_das_ferramentas varchar(6) NOT NULL DEFAULT 'F8F8F8' ,
  Cor_das_ferramentas_de_leitura varchar(6) NOT NULL DEFAULT 'CCCCCC' ,
  Cor_de_testo_ativo_das_ferramentas varchar(6) NOT NULL DEFAULT '000000' ,
  Cor_de_testo_inativo_das_ferramentas varchar(6) NOT NULL DEFAULT '888888' ,
  Cor_de_testo_selecionado_das_ferramentas varchar(6) NOT NULL DEFAULT '0000FF' ,
  Cor_de_link varchar(6) NOT NULL DEFAULT '0000FF' ,
  Cor_de_link_ativo varchar(6) NOT NULL DEFAULT '00FFFF' ,
  Cor_de_link_visitado varchar(6) NOT NULL DEFAULT 'FF0000' ,
  PRIMARY KEY (Empresa)
);



#
# Dumping data for table 'conserte_configuracoes'
#

#
# Table structure for table 'conserte_contas'
#

DROP TABLE IF EXISTS conserte_contas;
CREATE TABLE IF NOT EXISTS conserte_contas (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  ID_da_conta mediumint(7) unsigned NOT NULL auto_increment,
  Descricao longtext NOT NULL DEFAULT '' ,
  Valor varchar(10) NOT NULL DEFAULT '' ,
  Vencimento varchar(10) NOT NULL DEFAULT '' ,
  Se_pago enum('1','0') NOT NULL DEFAULT '0' ,
  Quitacao varchar(10) ,
  PRIMARY KEY (Empresa,ID_da_conta)
);



#
# Dumping data for table 'conserte_contas'
#


#
# Table structure for table 'conserte_funcionarios'
#

DROP TABLE IF EXISTS conserte_funcionarios;
CREATE TABLE IF NOT EXISTS conserte_funcionarios (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  Nome_completo varchar(100) NOT NULL DEFAULT '' ,
  Quando_Salvo varchar(10) NOT NULL DEFAULT '' ,
  Quando_Alterados varchar(10) ,
  Quando_Acessado varchar(10) ,
  Se_Ativo enum('1','0') NOT NULL DEFAULT '1' ,
  Senha varchar(8) NOT NULL DEFAULT '' ,
  Cargo varchar(75) NOT NULL DEFAULT '' ,
  Sexo enum('Masculino','Feminino') NOT NULL DEFAULT 'Masculino' ,
  Nascimento varchar(10) ,
  Endereco longtext ,
  Telefone varchar(50) ,
  Email varchar(50) ,
  Se_acessa_relatorios enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_contas enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_funcionarios enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_clientes enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_servicos enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_orcamentos enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_ocorrencias enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_configuracoes enum('1','0') NOT NULL DEFAULT '0' ,
  PRIMARY KEY (Empresa,Nome_completo)
);



#
# Dumping data for table 'conserte_funcionarios'
#


#
# Table structure for table 'conserte_licencas'
#

DROP TABLE IF EXISTS conserte_licencas;
CREATE TABLE IF NOT EXISTS conserte_licencas (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  Licenciado varchar(100) NOT NULL DEFAULT '' ,
  RepresentanteOnline varchar(100) ,
  UltimoDataCreditoUsado varchar(50) ,
  Licenca_ativa enum('1','0') NOT NULL DEFAULT '1' ,
  Razao_do_bloqueio longtext ,
  Acordo varchar(30) NOT NULL DEFAULT '' ,
  Iniciado varchar(10) NOT NULL DEFAULT '' ,
  Validade varchar(10) NOT NULL DEFAULT '' ,
  Memoria_maxima bigint(255) NOT NULL DEFAULT '5242880' ,
  Credito_usado varchar(10) NOT NULL DEFAULT '0' ,
  Credito_sobrando varchar(10) DEFAULT '0' ,
  Custo_do_programa varchar(10) ,
  Ultimo_acesso varchar(10) ,
  Aviso longtext ,
  Observacoes_oculta longtext ,
  IPs_Ativos longtext ,
  PRIMARY KEY (Empresa)
);



#
# Dumping data for table 'conserte_licencas'
#


#
# Table structure for table 'conserte_ocorrencias'
#

DROP TABLE IF EXISTS conserte_ocorrencias;
CREATE TABLE IF NOT EXISTS conserte_ocorrencias (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  Quando varchar(10) NOT NULL DEFAULT '' ,
  Quem longtext NOT NULL DEFAULT '' ,
  Acao longtext NOT NULL DEFAULT '' ,
  PRIMARY KEY (Empresa,Quando)
);



#
# Dumping data for table 'conserte_ocorrencias'
#

#
# Table structure for table 'conserte_orcamentos'
#

DROP TABLE IF EXISTS conserte_orcamentos;
CREATE TABLE IF NOT EXISTS conserte_orcamentos (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  Selo bigint(7) unsigned NOT NULL auto_increment,
  Cliente varchar(100) NOT NULL DEFAULT '' ,
  Objeto varchar(100) NOT NULL DEFAULT '' ,
  Entrada date NOT NULL DEFAULT '0000-00-00' ,
  Defeitos longtext NOT NULL DEFAULT '' ,
  Servicos longtext NOT NULL DEFAULT '' ,
  Quantidades longtext NOT NULL DEFAULT '' ,
  Custos longtext NOT NULL DEFAULT '' ,
  Descontos longtext NOT NULL DEFAULT '' ,
  Garantias longtext NOT NULL DEFAULT '' ,
  Juros varchar(10) NOT NULL DEFAULT '0' ,
  Total varchar(10) NOT NULL DEFAULT '0' ,
  Parcelas tinyint(2) unsigned NOT NULL DEFAULT '0' ,
  Intervalo enum('7','15','30') NOT NULL DEFAULT '30' ,
  SeEntrada enum('1','0') NOT NULL DEFAULT '1' ,
  SeEvitaFeriados enum('1','0') NOT NULL DEFAULT '0' ,
  DatasDePagamento longtext NOT NULL DEFAULT '' ,
  DatasPagas longtext NOT NULL DEFAULT '' ,
  DataDaProposta date NOT NULL DEFAULT '0000-00-00' ,
  DataDeAceitacao date NOT NULL DEFAULT '0000-00-00' ,
  DataDeDevolucao date DEFAULT '0000-00-00' ,
  EnderecoDeDevolucao varchar(255) ,
  SeDevolucaoEfetivada enum('0','1') NOT NULL DEFAULT '0' ,
  Observacoes longtext ,
  Quando_Salvo varchar(10) ,
  Quando_Alterados varchar(10) ,
  PRIMARY KEY (Empresa,Selo)
);



#
# Dumping data for table 'conserte_orcamentos'
#


#
# Table structure for table 'conserte_servicos'
#

DROP TABLE IF EXISTS conserte_servicos;
CREATE TABLE IF NOT EXISTS conserte_servicos (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  ID_do_servico mediumint(7) unsigned NOT NULL auto_increment,
  Disponivel enum('1','0') NOT NULL DEFAULT '1' ,
  Descricao varchar(100) NOT NULL DEFAULT '' ,
  Preco varchar(10) NOT NULL DEFAULT '0' ,
  Garantia_Tempo varchar(4) NOT NULL DEFAULT '0' ,
  Garantia_Frequencia enum('','dia','semana','mês','ano') NOT NULL DEFAULT 'dia' ,
  Observacoes longtext ,
  PRIMARY KEY (Empresa,ID_do_servico)
);



#
# Dumping data for table 'conserte_servicos'
#


#
# Table structure for table 'conserte_servidor'
#

DROP TABLE IF EXISTS conserte_servidor;
CREATE TABLE IF NOT EXISTS conserte_servidor (
  Nome varchar(100) NOT NULL DEFAULT 'TUATECnologia.COM COOP. LTDA' ,
  Site varchar(100) NOT NULL DEFAULT 'www.tuatec.com' ,
  EMail varchar(100) NOT NULL DEFAULT 'sac@tuatec.com' ,
  Telefones varchar(50) NOT NULL DEFAULT '(081) 8731-0165' ,
  Transacoes varchar(255) NOT NULL DEFAULT 'Conta corrente: 18.1869-7 Agencia: 0922-9 do BANDO DO BRASIL' ,
  PRIMARY KEY (Nome)
);



#
# Dumping data for table 'conserte_servidor'
#

#
# Table structure for table 'icoc_avisos'
#

DROP TABLE IF EXISTS icoc_avisos;
CREATE TABLE IF NOT EXISTS icoc_avisos (
  Numero bigint(7) NOT NULL auto_increment,
  Anunciante varchar(100) NOT NULL DEFAULT '' ,
  Vencimento varchar(10) NOT NULL DEFAULT '' ,
  Descricao longtext NOT NULL DEFAULT '' ,
  PRIMARY KEY (Numero)
);



#
# Dumping data for table 'icoc_avisos'
#



#
# Table structure for table 'icoc_batepapos'
#

DROP TABLE IF EXISTS icoc_batepapos;
CREATE TABLE IF NOT EXISTS icoc_batepapos (
  Quando bigint(10) NOT NULL DEFAULT '0' ,
  De varchar(100) NOT NULL DEFAULT '' ,
  Para varchar(100) NOT NULL DEFAULT '' ,
  Mensagem longtext NOT NULL DEFAULT '' ,
  MensagemLida enum('Sim','Não') DEFAULT 'Não' ,
  PRIMARY KEY (Quando)
);



#
# Dumping data for table 'icoc_batepapos'
#


#
# Table structure for table 'icoc_cultos'
#

DROP TABLE IF EXISTS icoc_cultos;
CREATE TABLE IF NOT EXISTS icoc_cultos (
  Quando varchar(10) NOT NULL DEFAULT '' ,
  Pregador varchar(100) NOT NULL DEFAULT '' ,
  Assunto varchar(100) NOT NULL DEFAULT '' ,
  Aula longtext NOT NULL DEFAULT '' ,
  PRIMARY KEY (Quando)
);



#
# Dumping data for table 'icoc_cultos'
#


#
# Table structure for table 'icoc_responsabilidades'
#

DROP TABLE IF EXISTS icoc_responsabilidades;
CREATE TABLE IF NOT EXISTS icoc_responsabilidades (
  Email varchar(100) NOT NULL DEFAULT '' ,
  Noticias enum('Sim','Não') DEFAULT 'Não' ,
  Avisos enum('Sim','Não') DEFAULT 'Não' ,
  Cultos enum('Sim','Não') DEFAULT 'Não' ,
  Estudos enum('Sim','Não') DEFAULT 'Não' ,
  Resposabilidades enum('Sim','Não') DEFAULT 'Não' ,
  PRIMARY KEY (Email)
);



#
# Dumping data for table 'icoc_responsabilidades'
#


#
# Table structure for table 'icoc_usuarios'
#

DROP TABLE IF EXISTS icoc_usuarios;
CREATE TABLE IF NOT EXISTS icoc_usuarios (
  Email varchar(100) NOT NULL DEFAULT '0' ,
  Senha varchar(8) NOT NULL DEFAULT '' ,
  SeAceito enum('Sim','Não') NOT NULL DEFAULT 'Sim' ,
  TipoDeUsuario enum('Visitante','Discípulo') NOT NULL DEFAULT 'Visitante' ,
  AceitoPor varchar(100) ,
  Nome varchar(25) NOT NULL DEFAULT '' ,
  Sobrenome varchar(255) NOT NULL DEFAULT '' ,
  Sexo enum('Masculino','Feminino') NOT NULL DEFAULT 'Masculino' ,
  Nascimento varchar(10) ,
  UltimoAcesso varchar(10) ,
  Batismo varchar(10) ,
  Historia longtext ,
  Telefones varchar(100) ,
  ExibirTelefone enum('Sim','Não') DEFAULT 'Sim' ,
  Endereco longtext ,
  Bairro longtext ,
  Complemento longtext ,
  Cidade varchar(100) ,
  Estado char(2) ,
  CEP varchar(10) ,
  ExibirEndereco enum('Sim','Não') DEFAULT 'Sim' ,
  LocalDeEstudo longtext ,
  LocalDeTrabalho longtext ,
  Passatempos longtext ,
  ExibirCotidiano enum('Sim','Não') DEFAULT 'Sim' ,
  Avata varchar(255) ,
  PRIMARY KEY (Email)
);



#
# Dumping data for table 'icoc_usuarios'
#


#
# Table structure for table 'mrpg_jogadores'
#

DROP TABLE IF EXISTS mrpg_jogadores;
CREATE TABLE IF NOT EXISTS mrpg_jogadores (
  ID bigint(15) unsigned NOT NULL auto_increment,
  SeConcluiuAparencia enum('1','0') NOT NULL DEFAULT '0' ,
  SeConcluiuFicha enum('1','0') NOT NULL DEFAULT '0' ,
  EMail varchar(70) NOT NULL DEFAULT '' ,
  Mundo tinyint(2) unsigned NOT NULL DEFAULT '1' ,
  Mapa_X tinyint(3) NOT NULL DEFAULT '0' ,
  Mapa_Y tinyint(3) NOT NULL DEFAULT '0' ,
  Mapa_Z tinyint(3) NOT NULL DEFAULT '0' ,
  Local_X tinyint(2) unsigned NOT NULL DEFAULT '17' ,
  Local_Y tinyint(2) unsigned NOT NULL DEFAULT '12' ,
  NomeDoPersonagem varchar(100) NOT NULL DEFAULT 'Indigente_0001' ,
  Estoria longtext NOT NULL DEFAULT '' ,
  Especie varchar(30) DEFAULT 'Humana' ,
  Sexo enum('Masculino','Feminino') NOT NULL DEFAULT 'Masculino' ,
  Pele varchar(30) DEFAULT 'Humana Branca' ,
  Penteado varchar(30) DEFAULT 'Careca' ,
  CorDoCabelo varchar(30) DEFAULT 'Negro' ,
  Olhos varchar(30) DEFAULT 'Pequena Normal' ,
  Nariz varchar(30) DEFAULT 'Pequeno' ,
  Boca varchar(30) DEFAULT 'Normal Fino' ,
  Acessorio varchar(30) DEFAULT 'Nenhum' ,
  Equip_Cabeca tinyint(3) unsigned NOT NULL DEFAULT '0' ,
  Equip_Pescoco tinyint(3) unsigned NOT NULL DEFAULT '0' ,
  Equip_Peito tinyint(3) unsigned NOT NULL DEFAULT '1' ,
  Equip_MaoDireita tinyint(3) unsigned NOT NULL DEFAULT '0' ,
  Equip_MaoEsquerda tinyint(3) unsigned NOT NULL DEFAULT '0' ,
  Equip_Costa tinyint(3) unsigned NOT NULL DEFAULT '0' ,
  Equip_Pernas tinyint(3) unsigned NOT NULL DEFAULT '1' ,
  Equip_Pes tinyint(3) unsigned NOT NULL DEFAULT '1' ,
  Pontos_Aplicado bigint(255) unsigned DEFAULT '0' ,
  Pontos_Pendentes bigint(255) unsigned DEFAULT '0' ,
  SaudeAtual bigint(255) unsigned DEFAULT '100' ,
  SaudeMaxima bigint(255) unsigned DEFAULT '100' ,
  EstaminaAtual tinyint(3) unsigned DEFAULT '100' ,
  EstaminaMaxima tinyint(3) unsigned DEFAULT '100' ,
  EnergiaAtual bigint(255) unsigned DEFAULT '10' ,
  EnergiaMaxima bigint(255) unsigned DEFAULT '10' ,
  Forca bigint(255) unsigned DEFAULT '15' ,
  Agilidade bigint(255) unsigned DEFAULT '10' ,
  Sorte bigint(255) unsigned DEFAULT '10' ,
  Habilidade_Luz bigint(255) unsigned DEFAULT '0' ,
  Habilidade_Terra bigint(255) unsigned DEFAULT '0' ,
  Habilidade_Sombra bigint(255) unsigned DEFAULT '0' ,
  Habilidade_Raio bigint(255) unsigned DEFAULT '0' ,
  Habilidade_Agua bigint(255) unsigned DEFAULT '0' ,
  Habilidade_Vento bigint(255) unsigned DEFAULT '0' ,
  Habilidade_Fogo bigint(255) unsigned DEFAULT '0' ,
  Habilidade_Corpo_a_corpo bigint(255) unsigned DEFAULT '1' ,
  Habilidade_ArmasBrancas bigint(255) unsigned DEFAULT '1' ,
  Habilidade_Arqueirismo bigint(255) unsigned DEFAULT '1' ,
  PRIMARY KEY (ID)
);



#
# Dumping data for table 'mrpg_jogadores'
#


#
# Table structure for table 'mrpg_mundos'
#

DROP TABLE IF EXISTS mrpg_mundos;
CREATE TABLE IF NOT EXISTS mrpg_mundos (
  ID tinyint(3) unsigned NOT NULL auto_increment,
  SeAtivo enum('0','1') NOT NULL DEFAULT '0' ,
  Nome varchar(50) NOT NULL DEFAULT '' ,
  Descricao longtext NOT NULL DEFAULT '' ,
  Idioma varchar(10) NOT NULL DEFAULT 'pt_br' ,
  Especie_Humana enum('0','1') NOT NULL DEFAULT '1' ,
  PRIMARY KEY (ID)
);



#
# Dumping data for table 'mrpg_mundos'
#


#
# Table structure for table 'mrpg_paletas'
#

DROP TABLE IF EXISTS mrpg_paletas;
CREATE TABLE IF NOT EXISTS mrpg_paletas (
  Mundo tinyint(2) unsigned NOT NULL DEFAULT '0' ,
  ID tinyint(3) unsigned NOT NULL auto_increment,
  Nome varchar(50) NOT NULL DEFAULT '' ,
  Sprite longtext NOT NULL DEFAULT '' ,
  PRIMARY KEY (ID,Mundo)
);



#
# Dumping data for table 'mrpg_paletas'
#


#
# Table structure for table 'secsaude_funcionarios'
#

DROP TABLE IF EXISTS secsaude_funcionarios;
CREATE TABLE IF NOT EXISTS secsaude_funcionarios (
  ID_Orgao tinyint(3) unsigned NOT NULL DEFAULT '0' ,
  ID_Funcionario tinyint(3) unsigned NOT NULL auto_increment,
  SeExerce enum('1','0') NOT NULL DEFAULT '1' ,
  NomeCompleto varchar(100) NOT NULL DEFAULT '' ,
  Matricula varchar(15) NOT NULL DEFAULT '' ,
  Foto longtext ,
  Setor varchar(75) NOT NULL DEFAULT '' ,
  Liberdade varchar(1) NOT NULL DEFAULT 'E' ,
  IP_Atual varchar(15) ,
  Se_IP_Atual_Ativo enum('0','1') NOT NULL DEFAULT '0' ,
  Quando_Salvo datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Alterados datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Acessado datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Senha varchar(8) NOT NULL DEFAULT '' ,
  Cargo varchar(75) NOT NULL DEFAULT '' ,
  Sexo enum('Masculino','Feminino') NOT NULL DEFAULT 'Masculino' ,
  Nascimento date NOT NULL DEFAULT '0000-00-00' ,
  Endereco varchar(255) NOT NULL DEFAULT '' ,
  Bairro varchar(75) NOT NULL DEFAULT '' ,
  Cidade varchar(75) NOT NULL DEFAULT '' ,
  Estado varchar(2) NOT NULL DEFAULT '' ,
  CEP varchar(10) NOT NULL DEFAULT '' ,
  Complemento longtext ,
  EMail varchar(75) ,
  DDD varchar(2) NOT NULL DEFAULT '' ,
  Fone1 varchar(8) NOT NULL DEFAULT '' ,
  Fone2 varchar(8) ,
  PRIMARY KEY (ID_Orgao,ID_Funcionario)
);



#
# Dumping data for table 'secsaude_funcionarios'
#


#
# Table structure for table 'secsaude_licenca'
#

DROP TABLE IF EXISTS secsaude_licenca;
CREATE TABLE IF NOT EXISTS secsaude_licenca (
  ID_Orgao bigint(7) unsigned NOT NULL auto_increment,
  Orgao varchar(100) NOT NULL DEFAULT '' ,
  RepresentanteOnline varchar(100) ,
  UltimoDataCreditoUsado varchar(50) ,
  SeLicencaAtiva enum('0','1') NOT NULL DEFAULT '1' ,
  Credito_Saldo bigint(10) unsigned NOT NULL DEFAULT '0' ,
  Credito_Custo bigint(10) unsigned NOT NULL DEFAULT '15000' ,
  Credito_Usado bigint(10) unsigned NOT NULL DEFAULT '0' ,
  Quando_Iniciado datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Valido datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Acessado datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Endereco varchar(255) NOT NULL DEFAULT '' ,
  Bairro varchar(50) NOT NULL DEFAULT '' ,
  Cidade varchar(75) NOT NULL DEFAULT '' ,
  Estado varchar(2) NOT NULL DEFAULT '' ,
  CEP varchar(10) NOT NULL DEFAULT '' ,
  Complemento longtext ,
  DDD varchar(2) NOT NULL DEFAULT '' ,
  Fone1 varchar(8) NOT NULL DEFAULT '' ,
  Fone2 varchar(8) ,
  Fax1 varchar(8) ,
  EMail varchar(75) NOT NULL DEFAULT '' ,
  Site longtext ,
  CPF_CNPJ varchar(15) ,
  Logotipo longtext ,
  Logomarca varchar(100) ,
  Aviso_Online longtext ,
  Observacoes_ocultas longtext ,
  PRIMARY KEY (ID_Orgao)
);



#
# Dumping data for table 'secsaude_licenca'
#


#
# Table structure for table 'servo_clientes'
#

DROP TABLE IF EXISTS servo_clientes;
CREATE TABLE IF NOT EXISTS servo_clientes (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  Nome_completo varchar(100) NOT NULL DEFAULT '' ,
  Se_Aceito enum('1','0') NOT NULL DEFAULT '1' ,
  Sexo enum('Masculino','Feminino') NOT NULL DEFAULT 'Masculino' ,
  RG varchar(15) ,
  CPF varchar(11) ,
  Endereco_de_cobranca longtext NOT NULL DEFAULT '' ,
  Telefone varchar(30) NOT NULL DEFAULT '' ,
  EMail varchar(50) ,
  Nascimento date DEFAULT '0000-00-00' ,
  Observacoes longtext ,
  Credito_usado bigint(10) unsigned NOT NULL DEFAULT '0' ,
  Credito_maximo bigint(10) unsigned NOT NULL DEFAULT '0' ,
  Ultima_cobranca date DEFAULT '0000-00-00' ,
  Nome_do_representante varchar(100) ,
  Telefone_do_representante varchar(30) ,
  Quando_Salvo datetime DEFAULT '0000-00-00 00:00:00' ,
  Quando_Alterados datetime DEFAULT '0000-00-00 00:00:00' ,
  PRIMARY KEY (Empresa,Nome_completo)
);



#
# Dumping data for table 'servo_clientes'
#


#
# Table structure for table 'servo_contas'
#

DROP TABLE IF EXISTS servo_contas;
CREATE TABLE IF NOT EXISTS servo_contas (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  ID_da_conta mediumint(7) unsigned NOT NULL auto_increment,
  Descricao longtext NOT NULL DEFAULT '' ,
  Valor varchar(10) NOT NULL DEFAULT '' ,
  Vencimento date NOT NULL DEFAULT '0000-00-00' ,
  Se_pago enum('1','0') NOT NULL DEFAULT '0' ,
  Quitacao datetime DEFAULT '0000-00-00 00:00:00' ,
  Quando_Salvo datetime DEFAULT '0000-00-00 00:00:00' ,
  Quando_Alterado datetime DEFAULT '0000-00-00 00:00:00' ,
  PRIMARY KEY (Empresa,ID_da_conta)
);



#
# Dumping data for table 'servo_contas'
#


#
# Table structure for table 'servo_estoque'
#

DROP TABLE IF EXISTS servo_estoque;
CREATE TABLE IF NOT EXISTS servo_estoque (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  CodigoDeBarras varchar(14) NOT NULL DEFAULT '0' ,
  SeAtivo enum('0','1') NOT NULL DEFAULT '1' ,
  Descricao longtext NOT NULL DEFAULT '' ,
  Apresentacao varchar(30) NOT NULL DEFAULT '' ,
  Natureza varchar(50) NOT NULL DEFAULT '' ,
  Fornecedor varchar(100) NOT NULL DEFAULT '' ,
  Observacoes longtext ,
  Quantidade_Estoque float NOT NULL DEFAULT '0' ,
  Quantidade_Critica float NOT NULL DEFAULT '0' ,
  Quantidade_Vendida float NOT NULL DEFAULT '0' ,
  Quando_Registrado datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Alterado datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Vendido datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Vence date DEFAULT '0000-00-00' ,
  PrecoDeCompra bigint(7) unsigned NOT NULL DEFAULT '0' ,
  PrecoDeVenda bigint(7) unsigned NOT NULL DEFAULT '0' ,
  PRIMARY KEY (Empresa,CodigoDeBarras)
);



#
# Dumping data for table 'servo_estoque'
#


#
# Table structure for table 'servo_fornecedores'
#

DROP TABLE IF EXISTS servo_fornecedores;
CREATE TABLE IF NOT EXISTS servo_fornecedores (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  Empresa_Fornecedora varchar(100) NOT NULL DEFAULT '' ,
  SeAtivo enum('1','0') NOT NULL DEFAULT '1' ,
  Representante varchar(100) NOT NULL DEFAULT '' ,
  CPF_CNPJ varchar(15) ,
  Endereco longtext ,
  Fone varchar(50) NOT NULL DEFAULT '' ,
  EMail varchar(75) ,
  Site longtext ,
  Observacoes longtext ,
  Quando_Salvo datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Alterados datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  PRIMARY KEY (Empresa,Empresa_Fornecedora)
);



#
# Dumping data for table 'servo_fornecedores'
#


#
# Table structure for table 'servo_funcionarios'
#

DROP TABLE IF EXISTS servo_funcionarios;
CREATE TABLE IF NOT EXISTS servo_funcionarios (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  Nome_completo varchar(100) NOT NULL DEFAULT '' ,
  Se_Ativo enum('1','0') NOT NULL DEFAULT '1' ,
  IP_Atual varchar(15) NOT NULL DEFAULT '' ,
  Se_IP_Atual_Ativo enum('0','1') NOT NULL DEFAULT '0' ,
  Quando_Salvo datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Alterados datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Acessado datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Senha varchar(8) NOT NULL DEFAULT '' ,
  Cargo varchar(75) NOT NULL DEFAULT '' ,
  Sexo enum('Masculino','Feminino') NOT NULL DEFAULT 'Masculino' ,
  Nascimento date DEFAULT '0000-00-00' ,
  Endereco longtext ,
  Fones varchar(50) ,
  Email varchar(50) ,
  Se_acessa_funcionarios enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_clientes enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_fornecedores enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_naturezas enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_estoque enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_vendas enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_contas_apagar enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_contas_pagas enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_fluxodecaixa enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_relatorios enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_ocorrencias enum('1','0') NOT NULL DEFAULT '0' ,
  Se_acessa_configuracoes enum('1','0') NOT NULL DEFAULT '0' ,
  PRIMARY KEY (Empresa,Nome_completo)
);



#
# Dumping data for table 'servo_funcionarios'
#


#
# Table structure for table 'servo_licencas'
#

DROP TABLE IF EXISTS servo_licencas;
CREATE TABLE IF NOT EXISTS servo_licencas (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  Licenciado varchar(100) NOT NULL DEFAULT '' ,
  RepresentanteOnline varchar(100) ,
  UltimoDataCreditoUsado varchar(50) ,
  SeLicencaAtiva enum('0','1') NOT NULL DEFAULT '1' ,
  TipoDeLicenca varchar(50) NOT NULL DEFAULT 'Teste Beta' ,
  Memoria_Maxima bigint(15) unsigned NOT NULL DEFAULT '5242880' ,
  Credito_Saldo bigint(10) unsigned NOT NULL DEFAULT '0' ,
  Credito_Custo bigint(10) unsigned NOT NULL DEFAULT '2499' ,
  Credito_Usado bigint(10) unsigned NOT NULL DEFAULT '0' ,
  Datacreditos_Usados longtext NOT NULL DEFAULT '' ,
  Quando_Iniciado datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Valido datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Acessado datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Endereco varchar(255) NOT NULL DEFAULT '' ,
  Bairro varchar(50) NOT NULL DEFAULT '' ,
  Cidade varchar(75) NOT NULL DEFAULT '' ,
  Estado char(2) NOT NULL DEFAULT '' ,
  CEP varchar(10) NOT NULL DEFAULT '' ,
  Complemento longtext ,
  Fones varchar(100) NOT NULL DEFAULT '' ,
  EMail varchar(75) NOT NULL DEFAULT '' ,
  Site longtext ,
  CPF_CNPJ varchar(15) ,
  DescricaoDasAtividades longtext ,
  Logotipo longtext ,
  Logomarca varchar(100) ,
  Cabecalho longtext ,
  Aviso_Online longtext ,
  Observacoes_ocultas tinyint(3) unsigned ,
  Conf_Estoque_Filtro longtext ,
  Conf_Estoque_Tipo varchar(5) ,
  Conf_Estoque_Amostra varchar(5) ,
  Conf_Estoque_Pagina varchar(5) ,
  Conf_Estoque_OrdenarPor varchar(50) ,
  Conf_Contas_A_Pagar_Filtro longtext ,
  Conf_Contas_A_Pagar_Tipo varchar(5) ,
  Conf_Contas_A_Pagar_Amostra varchar(5) ,
  Conf_Contas_A_Pagar_Pagina varchar(5) ,
  Conf_Contas_A_Pagar_OrdenarPor varchar(50) ,
  PRIMARY KEY (Empresa)
);



#
# Dumping data for table 'servo_licencas'
#


#
# Table structure for table 'servo_naturezas'
#

DROP TABLE IF EXISTS servo_naturezas;
CREATE TABLE IF NOT EXISTS servo_naturezas (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  NomeDaNatureza varchar(75) NOT NULL DEFAULT '' ,
  SeAtivo enum('1','0') NOT NULL DEFAULT '1' ,
  Observacoes longtext ,
  Quando_Salvo datetime DEFAULT '0000-00-00 00:00:00' ,
  Quando_Alterados datetime DEFAULT '0000-00-00 00:00:00' ,
  PRIMARY KEY (Empresa,NomeDaNatureza)
);



#
# Dumping data for table 'servo_naturezas'
#


#
# Table structure for table 'servo_ocorrencias'
#

DROP TABLE IF EXISTS servo_ocorrencias;
CREATE TABLE IF NOT EXISTS servo_ocorrencias (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  Quando datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quem longtext NOT NULL DEFAULT '' ,
  Acao longtext NOT NULL DEFAULT '' ,
  PRIMARY KEY (Empresa,Quando)
);



#
# Dumping data for table 'servo_ocorrencias'
#


#
# Table structure for table 'servo_servidor'
#

DROP TABLE IF EXISTS servo_servidor;
CREATE TABLE IF NOT EXISTS servo_servidor (
  Empresa varchar(100) NOT NULL DEFAULT 'TUATECnologia.COM COOP. LTDA' ,
  Responsavel varchar(100) NOT NULL DEFAULT 'Rui Brito de Siqueira' ,
  CPF_CNPJ varchar(15) NOT NULL DEFAULT '042.401.854-32' ,
  Quando_Iniciado date NOT NULL DEFAULT '2007-01-24' ,
  Site varchar(50) NOT NULL DEFAULT 'www.tuatec.com' ,
  EMail varchar(75) NOT NULL DEFAULT 'sac@tuatec.com' ,
  Fones varchar(100) NOT NULL DEFAULT '(0xx81) 8731 0165' ,
  Endereco varchar(255) NOT NULL DEFAULT 'Rua São Domingos Nº123' ,
  Bairro varchar(50) NOT NULL DEFAULT '15 de Novembro' ,
  Cidade varchar(75) NOT NULL DEFAULT 'Gravatá' ,
  Estado char(2) NOT NULL DEFAULT 'PE' ,
  CEP varchar(10) NOT NULL DEFAULT '55.645-750' ,
  Banco varchar(50) NOT NULL DEFAULT 'BANCO DO BRASIL' ,
  Agencia varchar(15) NOT NULL DEFAULT '0922-9' ,
  Conta_Corrente varchar(15) NOT NULL DEFAULT '18.869-7' ,
  Software_Tipo varchar(50) NOT NULL DEFAULT 'Teste BETA' ,
  Software_DiasParaTeste int(4) unsigned NOT NULL DEFAULT '30' ,
  Software_MemoriaMaxima bigint(15) unsigned NOT NULL DEFAULT '5242880' ,
  Software_PrecoDoAluguel bigint(7) unsigned NOT NULL DEFAULT '1999' ,
  PRIMARY KEY (Empresa)
);



#
# Dumping data for table 'servo_servidor'
#


#
# Table structure for table 'servo_vendas'
#

DROP TABLE IF EXISTS servo_vendas;
CREATE TABLE IF NOT EXISTS servo_vendas (
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  Nota bigint(15) unsigned NOT NULL auto_increment,
  Vendedor varchar(100) NOT NULL DEFAULT '' ,
  Quando_Salvo datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Alterado datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  CodigosDeBarras longtext NOT NULL DEFAULT '' ,
  Descricoes longtext NOT NULL DEFAULT '' ,
  Quantidades longtext NOT NULL DEFAULT '' ,
  Unitarios longtext NOT NULL DEFAULT '' ,
  Descontos longtext NOT NULL DEFAULT '' ,
  Totais longtext NOT NULL DEFAULT '' ,
  Total_Hipotetico bigint(7) unsigned NOT NULL DEFAULT '0' ,
  FormaDePagamento enum('','AVista','APrazo') NOT NULL DEFAULT '' ,
  Cliente varchar(100) NOT NULL DEFAULT '' ,
  Parcelamento_SeEntrada enum('1','0') NOT NULL DEFAULT '1' ,
  Parcelamento_Quantia tinyint(2) unsigned NOT NULL DEFAULT '0' ,
  Parcelamento_JurosPercentual float NOT NULL DEFAULT '5' ,
  Parcelamento_Valor bigint(7) unsigned NOT NULL DEFAULT '0' ,
  Parcelamento_Frequencia char(2) NOT NULL DEFAULT '30' ,
  Parcelamento_PosterizaFeriados enum('0','1') NOT NULL DEFAULT '0' ,
  Parcelas_DatasDePagamentos longtext NOT NULL DEFAULT '' ,
  Parcelas_DatasPagas longtext NOT NULL DEFAULT '' ,
  Total_APagar bigint(7) unsigned NOT NULL DEFAULT '0' ,
  Total_Pago bigint(7) unsigned NOT NULL DEFAULT '0' ,
  PRIMARY KEY (Nota,Empresa)
);



#
# Dumping data for table 'servo_vendas'
#


#
# Table structure for table 'tbl_a_concorrencia'
#

DROP TABLE IF EXISTS tbl_a_concorrencia;
CREATE TABLE IF NOT EXISTS tbl_a_concorrencia (
  ID mediumint(7) unsigned NOT NULL auto_increment,
  Responsavel varchar(100) NOT NULL DEFAULT '' ,
  Registrado date NOT NULL DEFAULT '0000-00-00' ,
  Empresa varchar(100) ,
  Administrador varchar(100) ,
  Fones varchar(100) ,
  Celulares varchar(100) ,
  Fax varchar(100) ,
  EMails longtext ,
  Endereco longtext ,
  AnoDeEntrada varchar(4) ,
  LocaisAtuantes char(2) ,
  TipoDoLocal enum('(Não informado)','Filial','Matriz') NOT NULL DEFAULT '(Não informado)' ,
  Funcionarios varchar(5) ,
  NaturezaDaEmpresa longtext ,
  TipoDeClientes enum('(Não informado)','Físico','Jurídico','Físico e Jurídico') NOT NULL DEFAULT '(Não informado)' ,
  AtendeLonge enum('(Não informado)','Não Pretende','Não Ainda','Proximidade','Cidade','Estado','Região','Pais','Exterior') NOT NULL DEFAULT '(Não informado)' ,
  Anuncia_Por_Visitas enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Anuncia_Por_Site enum('(Não informado)','Sim','Não','Futuramente','Obsoleto') NOT NULL DEFAULT '(Não informado)' ,
  SiteDaEmpresa varchar(255) ,
  DesenvolvedorDoSite varchar(255) ,
  ProvedorDeHospedagem varchar(255) ,
  ProvedorDeInternet varchar(100) ,
  Anuncia_Por_Radio enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  RadioEmossoras varchar(255) ,
  Anuncia_Por_Panfletos enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Anuncia_Por_MalaDireta enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Anuncia_Por_Letreiros enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  LocaisDosLetreiros longtext ,
  Anuncia_Por_Revistas enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Revistas longtext ,
  Anuncia_Por_Jornais enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Jornais longtext ,
  Anuncia_Por_Outras longtext ,
  UsaQuantosPCs char(2) ,
  ProgramaUsado varchar(255) ,
  Pontos_Fortes longtext ,
  Pontos_Fracos longtext ,
  Observacoes longtext ,
  PRIMARY KEY (ID)
);



#
# Dumping data for table 'tbl_a_concorrencia'
#


#
# Table structure for table 'tbl_a_mercado'
#

DROP TABLE IF EXISTS tbl_a_mercado;
CREATE TABLE IF NOT EXISTS tbl_a_mercado (
  ID mediumint(7) unsigned NOT NULL auto_increment,
  Responsavel varchar(100) NOT NULL DEFAULT '' ,
  Registrado date NOT NULL DEFAULT '0000-00-00' ,
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  Administrador varchar(100) NOT NULL DEFAULT '' ,
  Fones varchar(100) NOT NULL DEFAULT '' ,
  Celulares varchar(100) ,
  Fax varchar(100) ,
  EMails longtext ,
  Endereco longtext NOT NULL DEFAULT '' ,
  AnoDeEntrada varchar(4) ,
  LocaisAtuantes char(2) ,
  TipoDoLocal enum('(Não informado)','Filial','Matriz') NOT NULL DEFAULT '(Não informado)' ,
  Funcionarios varchar(5) ,
  NaturezaDaEmpresa longtext ,
  TipoDeClientes enum('(Não informado)','Físico','Jurídico','Físico e Jurídico') NOT NULL DEFAULT '(Não informado)' ,
  AtendeLonge enum('(Não informado)','Não Pretende','Não Ainda','Proximidade','Cidade','Estado','Região','Pais','Exterior') NOT NULL DEFAULT '(Não informado)' ,
  Anuncia_Por_Visitas enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Anuncia_Por_Site enum('(Não informado)','Sim','Não','Futuramente','Obsoleto') NOT NULL DEFAULT '(Não informado)' ,
  SiteDaEmpresa varchar(255) ,
  DesenvolvedorDoSite varchar(255) ,
  ProvedorDeHospedagem varchar(255) ,
  ProvedorDeInternet varchar(100) ,
  Anuncia_Por_Radio enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  RadioEmossoras varchar(255) ,
  Anuncia_Por_Panfletos enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Anuncia_Por_MalaDireta enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Anuncia_Por_Letreiros enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  LocaisDosLetreiros longtext ,
  Anuncia_Por_Revistas enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Revistas longtext ,
  Anuncia_Por_Jornais enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Jornais longtext ,
  Anuncia_Por_Outras longtext ,
  UsaQuantosPCs char(2) ,
  QuerQuantosPCs char(2) ,
  Pesquiza_Fornecedores enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Pesquiza_Clientes enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Pesquiza_Concorrentes enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Pesquiza_Produtos enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Pesquiza_Servicos enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Pesquiza_Lucros enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Pesquiza_Despesas enum('(Não informado)','Sim','Não','Futuramente') NOT NULL DEFAULT '(Não informado)' ,
  Pesquiza_Outras longtext ,
  ProgramaUsado varchar(255) ,
  QuerUmPrograma enum('(Não informado)','Já Possui','Não','Talvez','Sim') NOT NULL DEFAULT '(Não informado)' ,
  Observacoes longtext ,
  PRIMARY KEY (ID)
);



#
# Dumping data for table 'tbl_a_mercado'
#


#
# Table structure for table 'tbl_a_ocorrencia'
#

DROP TABLE IF EXISTS tbl_a_ocorrencia;
CREATE TABLE IF NOT EXISTS tbl_a_ocorrencia (
  ID mediumint(7) unsigned NOT NULL auto_increment,
  Quando varchar(10) NOT NULL DEFAULT '' ,
  Responsavel varchar(100) NOT NULL DEFAULT '' ,
  Acao longtext NOT NULL DEFAULT '' ,
  PRIMARY KEY (ID)
);



#
# Dumping data for table 'tbl_a_ocorrencia'
#



#
# Table structure for table 'tbl_a_parceria'
#

DROP TABLE IF EXISTS tbl_a_parceria;
CREATE TABLE IF NOT EXISTS tbl_a_parceria (
  ID mediumint(7) unsigned NOT NULL auto_increment,
  Responsavel varchar(100) NOT NULL DEFAULT '' ,
  Confirmada enum('Sim','Não') NOT NULL DEFAULT 'Não' ,
  Registrado varchar(10) ,
  Empresa varchar(100) ,
  Administrador varchar(100) ,
  Oferta longtext ,
  Procura longtext ,
  Fones varchar(100) ,
  Celulares varchar(100) ,
  Fax varchar(100) ,
  EMails longtext ,
  Endereco longtext ,
  SiteDaEmpresa varchar(255) ,
  Observacoes longtext ,
  PRIMARY KEY (ID)
);



#
# Dumping data for table 'tbl_a_parceria'
#


#
# Table structure for table 'tbl_blog'
#

DROP TABLE IF EXISTS tbl_blog;
CREATE TABLE IF NOT EXISTS tbl_blog (
  ID tinyint(7) unsigned NOT NULL auto_increment,
  Assunto varchar(255) NOT NULL DEFAULT '' ,
  EMail varchar(75) NOT NULL DEFAULT '' ,
  SeOcultarEMail enum('1','0') NOT NULL DEFAULT '0' ,
  Quando datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Comentario longtext NOT NULL DEFAULT '' ,
  PRIMARY KEY (ID,Assunto)
);



#
# Dumping data for table 'tbl_blog'
#


#
# Table structure for table 'tbl_boletos'
#

DROP TABLE IF EXISTS tbl_boletos;
CREATE TABLE IF NOT EXISTS tbl_boletos (
  Documento bigint(10) unsigned NOT NULL auto_increment,
  Processamento date NOT NULL DEFAULT '0000-00-00' ,
  Vencimento date NOT NULL DEFAULT '0000-00-00' ,
  ValorCobrado bigint(10) unsigned NOT NULL DEFAULT '0' ,
  Empresa longtext NOT NULL DEFAULT '' ,
  Sacado longtext NOT NULL DEFAULT '' ,
  EnderecoCompleto1 longtext NOT NULL DEFAULT '' ,
  EnderecoCompleto2 longtext NOT NULL DEFAULT '' ,
  Descricao1DoBoleto longtext NOT NULL DEFAULT '' ,
  Descricao2DoBoleto longtext NOT NULL DEFAULT '' ,
  SeQuitado enum('0','1') NOT NULL DEFAULT '0' ,
  PRIMARY KEY (Documento)
);



#
# Dumping data for table 'tbl_boletos'
#



#
# Table structure for table 'tbl_contas'
#

DROP TABLE IF EXISTS tbl_contas;
CREATE TABLE IF NOT EXISTS tbl_contas (
  ID mediumint(7) unsigned NOT NULL auto_increment,
  Tipo enum('Pagar','Receber') NOT NULL DEFAULT 'Pagar' ,
  Concluida enum('Sim','Não') NOT NULL DEFAULT 'Não' ,
  Referente longtext NOT NULL DEFAULT '' ,
  Vencimento varchar(10) NOT NULL DEFAULT '' ,
  Vencida varchar(10) ,
  Valor float NOT NULL DEFAULT '0' ,
  PRIMARY KEY (ID)
);



#
# Dumping data for table 'tbl_contas'
#



#
# Table structure for table 'tbl_downloads'
#

DROP TABLE IF EXISTS tbl_downloads;
CREATE TABLE IF NOT EXISTS tbl_downloads (
  URL varchar(255) NOT NULL DEFAULT '' ,
  Quantia bigint(10) unsigned NOT NULL DEFAULT '0' ,
  Fluxo bigint(50) unsigned NOT NULL DEFAULT '0' ,
  Ultima_vez varchar(10) NOT NULL DEFAULT '' ,
  Ultimo_PC varchar(25) NOT NULL DEFAULT '' ,
  PRIMARY KEY (URL)
);



#
# Dumping data for table 'tbl_downloads'
#


#
# Table structure for table 'tbl_duvidasfrequentes'
#

DROP TABLE IF EXISTS tbl_duvidasfrequentes;
CREATE TABLE IF NOT EXISTS tbl_duvidasfrequentes (
  ID mediumint(7) unsigned NOT NULL auto_increment,
  SePublicado enum('Sim','Não') NOT NULL DEFAULT 'Sim' ,
  Categoria varchar(255) ,
  Duvida varchar(255) NOT NULL DEFAULT '' ,
  MenuExplicativo longtext NOT NULL DEFAULT '' ,
  PRIMARY KEY (ID)
);



#
# Dumping data for table 'tbl_duvidasfrequentes'
#


#
# Table structure for table 'tbl_erros'
#

DROP TABLE IF EXISTS tbl_erros;
CREATE TABLE IF NOT EXISTS tbl_erros (
  RegistroWeb mediumint(7) unsigned NOT NULL auto_increment,
  Programa_ID varchar(50) NOT NULL DEFAULT '' ,
  SeUsuarioAvisado enum('1','0') DEFAULT '1' ,
  Numero varchar(5) ,
  Ocorrencias varchar(15) NOT NULL DEFAULT '0' ,
  Quando varchar(10) ,
  Onde longtext NOT NULL DEFAULT '' ,
  Razao longtext NOT NULL DEFAULT '' ,
  Observacoes longtext ,
  PRIMARY KEY (RegistroWeb)
);



#
# Dumping data for table 'tbl_erros'
#



#
# Table structure for table 'tbl_historico'
#

DROP TABLE IF EXISTS tbl_historico;
CREATE TABLE IF NOT EXISTS tbl_historico (
  ID bigint(7) unsigned NOT NULL auto_increment,
  URL longtext NOT NULL DEFAULT '' ,
  Quem varchar(100) NOT NULL DEFAULT '' ,
  Quando datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Acao longtext NOT NULL DEFAULT '' ,
  PRIMARY KEY (ID)
);



#
# Dumping data for table 'tbl_historico'
#


#
# Table structure for table 'tbl_jornal'
#

DROP TABLE IF EXISTS tbl_jornal;
CREATE TABLE IF NOT EXISTS tbl_jornal (
  Caderno varchar(100) NOT NULL DEFAULT '' ,
  Assunto varchar(255) NOT NULL DEFAULT '' ,
  Publicacao enum('0','1') NOT NULL DEFAULT '0' ,
  AutoFormatado enum('0','1') NOT NULL DEFAULT '0' ,
  Corpo longtext ,
  Fonte longtext ,
  Imagens longtext ,
  Quando_Criado datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Alterado datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Lido datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  VezesLidas bigint(15) unsigned NOT NULL DEFAULT '0' ,
  PRIMARY KEY (Caderno,Assunto)
);



#
# Dumping data for table 'tbl_jornal'
#


#
# Table structure for table 'tbl_letreiro'
#

DROP TABLE IF EXISTS tbl_letreiro;
CREATE TABLE IF NOT EXISTS tbl_letreiro (
  id mediumint(7) unsigned NOT NULL auto_increment,
  anuncio longtext ,
  tipo varchar(15) ,
  velocidade tinyint(2) unsigned NOT NULL DEFAULT '6' ,
  direcao varchar(10) NOT NULL DEFAULT 'left' ,
  PRIMARY KEY (id)
);



#
# Dumping data for table 'tbl_letreiro'
#


#
# Table structure for table 'tbl_metas'
#

DROP TABLE IF EXISTS tbl_metas;
CREATE TABLE IF NOT EXISTS tbl_metas (
  Menu varchar(75) NOT NULL DEFAULT '' ,
  Descricao longtext ,
  PalavrasChaves longtext ,
  Acessos bigint(10) DEFAULT '0' ,
  Ultimo_Acesso varchar(10) ,
  Ultimo_PC varchar(25) ,
  PRIMARY KEY (Menu)
);



#
# Dumping data for table 'tbl_metas'
#


#
# Table structure for table 'tbl_permissoes_de_acesso'
#

DROP TABLE IF EXISTS tbl_permissoes_de_acesso;
CREATE TABLE IF NOT EXISTS tbl_permissoes_de_acesso (
  EMail varchar(75) NOT NULL DEFAULT '' ,
  Ass_Licencas_Servo enum('0','1') DEFAULT '0' ,
  Ass_Licencas_Conserte enum('0','1') DEFAULT '0' ,
  Ass_Licencas_AtelieDirany enum('0','1') DEFAULT '0' ,
  Ass_Registro_Usuarios enum('0','1') DEFAULT '0' ,
  Ass_Registro_Downloads enum('0','1') DEFAULT '0' ,
  Ass_Registro_Erros enum('0','1') DEFAULT '0' ,
  Ass_Registro_BancoDeDados enum('0','1') DEFAULT '0' ,
  Ass_Registro_ArqSistema enum('0','1') DEFAULT '0' ,
  Ass_Registro_Robos enum('0','1') DEFAULT '0' ,
  Ass_Publicacoes_Propagandas enum('0','1') DEFAULT '0' ,
  Ass_Publicacoes_Radio enum('0','1') DEFAULT '0' ,
  Ass_Publicacoes_Jornal enum('0','1') DEFAULT '0' ,
  Ass_Publicacoes_Boletos enum('0','1') DEFAULT '0' ,
  Ass_Publicacoes_Biblioteca enum('0','1') DEFAULT '0' ,
  Ass_Publicacoes_Menus enum('0','1') DEFAULT '0' ,
  Ass_Publicacoes_Letreiros enum('0','1') DEFAULT '0' ,
  Ass_Publicacoes_MRPG enum('0','1') DEFAULT '0' ,
  Ass_Analizes_Contas enum('0','1') DEFAULT '0' ,
  Ass_Analizes_Mercado enum('0','1') DEFAULT '0' ,
  Ass_Analizes_Concorrencia enum('0','1') DEFAULT '0' ,
  Ass_Analizes_Parceiria enum('0','1') DEFAULT '0' ,
  Ass_Analizes_Enquetes enum('0','1') DEFAULT '0' ,
  Ass_Analizes_Ocorrencias enum('0','1') DEFAULT '0' ,
  PRIMARY KEY (EMail)
);



#
# Dumping data for table 'tbl_permissoes_de_acesso'
#


#
# Table structure for table 'tbl_produtos'
#

DROP TABLE IF EXISTS tbl_produtos;
CREATE TABLE IF NOT EXISTS tbl_produtos (
  Nome varchar(50) NOT NULL DEFAULT '' ,
  Concluido enum('Sim','Não','Extinto') NOT NULL DEFAULT 'Não' ,
  Conclusao varchar(10) ,
  Encomendador varchar(255) ,
  Simbolo longtext ,
  NomeComercial varchar(100) ,
  Desenvolvedora longtext ,
  Preco_de_aluguel varchar(255) ,
  Descricao longtext ,
  Pre_requisitos longtext ,
  Restricoes longtext ,
  Local longtext ,
  PRIMARY KEY (Nome)
);



#
# Dumping data for table 'tbl_produtos'
#


#
# Table structure for table 'tbl_propagandas'
#

DROP TABLE IF EXISTS tbl_propagandas;
CREATE TABLE IF NOT EXISTS tbl_propagandas (
  Assunto varchar(100) NOT NULL DEFAULT '' ,
  Corpo longtext ,
  Quando_Criado datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Alterado datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Entregue_Quando datetime ,
  Entregue_Vezes bigint(10) unsigned ,
  PRIMARY KEY (Assunto)
);



#
# Dumping data for table 'tbl_propagandas'
#


#
# Table structure for table 'tbl_radioaudiencia'
#

DROP TABLE IF EXISTS tbl_radioaudiencia;
CREATE TABLE IF NOT EXISTS tbl_radioaudiencia (
  IP varchar(15) NOT NULL DEFAULT '' ,
  NomeDoPC varchar(100) ,
  URL longtext NOT NULL DEFAULT '' ,
  Quando_Conheceu datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Entrada datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Quando_Saida datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  SegundosOuvidos bigint(15) unsigned NOT NULL DEFAULT '0' ,
  PRIMARY KEY (IP)
);



#
# Dumping data for table 'tbl_radioaudiencia'
#


#
# Table structure for table 'tbl_radioprogramacao'
#

DROP TABLE IF EXISTS tbl_radioprogramacao;
CREATE TABLE IF NOT EXISTS tbl_radioprogramacao (
  ID bigint(7) NOT NULL auto_increment,
  Entrada time NOT NULL DEFAULT '00:00:00' ,
  Duracao time NOT NULL DEFAULT '00:00:00' ,
  Saida time NOT NULL DEFAULT '00:00:00' ,
  URL longtext NOT NULL DEFAULT '' ,
  Titulo varchar(100) ,
  Autor varchar(100) ,
  HITs bigint(10) unsigned NOT NULL DEFAULT '0' ,
  UltimoIP varchar(15) ,
  UltimoAcesso datetime DEFAULT '0000-00-00 00:00:00' ,
  SeComentariosExternos enum('0','1') NOT NULL DEFAULT '0' ,
  Comentario varchar(255) ,
  Dia_Dom enum('1','0') NOT NULL DEFAULT '1' ,
  Dia_Seg enum('1','0') NOT NULL DEFAULT '1' ,
  Dia_Ter enum('1','0') NOT NULL DEFAULT '1' ,
  Dia_Qua enum('1','0') NOT NULL DEFAULT '1' ,
  Dia_Qui enum('1','0') NOT NULL DEFAULT '1' ,
  Dia_Sex enum('1','0') NOT NULL DEFAULT '1' ,
  Dia_Sab enum('1','0') NOT NULL DEFAULT '1' ,
  PRIMARY KEY (ID)
);


#
# Dumping data for table 'tbl_radioprogramacao'
#

INSERT INTO tbl_radioprogramacao VALUES("1640", "25:54:03", "00:02:26", "25:56:29", "../musicas/animes/saikano/06_sayonara_-_instrumental_version.mp3", "06 Sayonara - Instrumental Version", "Saikano", "15", "200.249.114.67", "2009-01-03 22:48:19", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1641", "12:35:52", "00:02:27", "12:38:19", "../musicas/animes/saikano/07_toki_no_hazama.mp3", "07 Toki No Hazama", "Saikano", "15", "200.249.114.67", "2008-11-20 19:05:03", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1642", "20:43:01", "00:02:53", "20:45:54", "../musicas/animes/saikano/09_tenkei_chi_no_ikari.mp3", "09 Tenkei Chi No Ikari", "Saikano", "10", "200.249.114.67", "2008-12-27 08:47:28", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1643", "21:14:50", "00:02:26", "21:17:16", "../musicas/animes/saikano/10_yumemiru_tameni.mp3", "10 Yumemiru Tameni", "Saikano", "7", "201.45.104.55", "2008-11-27 10:43:04", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1644", "22:00:32", "00:01:52", "22:02:24", "../musicas/animes/saikano/11_kokoro_no_kage.mp3", "11 Kokoro No Kage", "Saikano", "11", "189.87.71.197", "2009-02-14 10:03:41", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1645", "24:50:09", "00:02:41", "24:52:50", "../musicas/animes/saikano/12_hidamari_no_futari.mp3", "12 Hidamari No Futari", "Saikano", "10", "200.249.114.67", "2009-01-03 23:50:28", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1646", "21:24:43", "00:02:04", "21:26:47", "../musicas/animes/saikano/15_sayonara_-_acoustic_version.mp3", "15 Sayonara - Acoustic Version", "Saikano", "9", "201.45.104.55", "2008-12-02 10:48:27", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1647", "11:50:06", "00:03:30", "11:53:36", "../musicas/animes/saikano/17_hoshi_no_hate.mp3", "17 Hoshi No Hate", "Saikano", "12", "189.87.71.197", "2009-02-14 22:13:48", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1648", "19:52:29", "00:01:32", "19:54:01", "../musicas/animes/saikano/19_sayonara_-_yuria_yato_-_animation_edit.mp3", "19 Sayonara - Yuria Yato - Animation Edit", "Saikano", "8", "127.0.0.1", "2009-03-07 19:51:09", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1649", "24:50:03", "00:00:05", "24:50:08", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "97", "127.0.0.1", "2009-03-07 19:46:17", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1650", "09:52:09", "00:00:36", "09:52:45", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "103", "127.0.0.1", "2009-03-07 19:39:51", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1652", "09:11:12", "00:00:04", "09:11:16", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "106", "201.45.104.55", "2009-03-03 14:43:40", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1653", "09:00:35", "00:00:31", "09:01:06", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "107", "127.0.0.1", "2009-03-07 19:18:50", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1654", "09:53:18", "00:00:04", "09:53:22", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "111", "201.45.104.55", "2009-03-03 15:18:06", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1655", "18:02:33", "00:04:52", "18:07:25", "../musicas/animes/naruto_shippuuden/_01_rocks.mp3", "01 Rocks", "Naruto Shippuuden", "12", "201.45.104.55", "2008-12-02 09:30:06", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1656", "25:37:01", "00:01:39", "25:38:40", "../musicas/animes/naruto_shippuuden/_02_i_said_i_m_naruto.mp3", "02 I Said I M Naruto", "Naruto Shippuuden", "11", "189.87.62.113", "2009-01-31 18:48:03", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1657", "19:50:53", "00:01:35", "19:52:28", "../musicas/animes/naruto_shippuuden/_04_morning.mp3", "04 Morning", "Naruto Shippuuden", "9", "127.0.0.1", "2009-03-07 19:49:32", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1658", "14:36:05", "00:01:37", "14:37:42", "../musicas/animes/naruto_shippuuden/_07_the_raising_fighting_spirit.mp3", "07 The Raising Fighting Spirit", "Naruto Shippuuden", "22", "200.249.114.67", "2009-01-03 22:46:30", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1659", "15:49:42", "00:02:59", "15:52:41", "../musicas/animes/naruto_shippuuden/_08_sadness_and_sorrow.mp3", "08 Sadness And Sorrow", "Naruto Shippuuden", "19", "189.93.61.191", "2009-02-28 15:09:50", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1660", "20:57:13", "00:02:06", "20:59:19", "../musicas/animes/naruto_shippuuden/_09_loneliness.mp3", "09 Loneliness", "Naruto Shippuuden", "19", "189.87.71.197", "2009-02-14 22:17:23", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1661", "10:17:22", "00:01:56", "10:19:18", "../musicas/animes/naruto_shippuuden/_10_sakura_s_theme.mp3", "10 Sakura S Theme", "Naruto Shippuuden", "6", "201.45.104.55", "2008-09-22 13:08:22", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1669", "24:27:03", "00:00:36", "24:27:39", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1668", "09:53:23", "00:00:05", "09:53:28", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1664", "23:53:38", "00:02:25", "23:56:03", "../musicas/animes/naruto_shippuuden/_fake.mp3", "Fake", "Naruto Shippuuden", "15", "189.87.71.61", "2008-11-29 09:38:04", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1665", "24:45:46", "00:04:16", "24:50:02", "../musicas/animes/naruto_shippuuden/_harumonia.mp3", "Harumonia", "Naruto Shippuuden", "25", "189.93.61.191", "2009-02-28 15:09:56", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1666", "18:16:33", "00:04:02", "18:20:35", "../musicas/animes/naruto_shippuuden/chibi_rock_lee.mp3", "Chibi Rock Lee", "Naruto Shippuuden", "14", "189.81.162.170", "2008-12-02 16:49:36", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1667", "18:14:25", "00:02:07", "18:16:32", "../musicas/animes/naruto_shippuuden/strong_and_strike.mp3", "Strong And Strike", "Naruto Shippuuden", "14", "189.87.66.222", "2008-10-09 17:55:51", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1671", "24:09:59", "00:00:04", "24:10:03", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1672", "15:52:42", "00:00:31", "15:53:13", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1673", "15:49:37", "00:00:04", "15:49:41", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1881", "24:20:22", "00:00:05", "24:20:27", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1676", "19:47:19", "00:00:05", "19:47:24", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1677", "10:13:35", "00:00:36", "10:14:11", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1679", "14:30:24", "00:00:04", "14:30:28", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1680", "18:27:02", "00:00:31", "18:27:33", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1681", "13:35:07", "00:00:04", "13:35:11", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1684", "16:10:18", "00:00:05", "16:10:23", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1882", "19:40:56", "00:00:36", "19:41:32", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1685", "09:42:32", "00:00:36", "09:43:08", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1687", "11:00:47", "00:00:04", "11:00:51", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1688", "13:35:44", "00:00:31", "13:36:15", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1689", "24:09:54", "00:00:04", "24:09:58", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1690", "17:45:30", "00:02:42", "17:48:12", "../musicas/animes/bleach/_beat_crusaders_-_tonight_tonight_tonight.mp3", "Beat Crusaders - Tonight Tonight Tonight", "Bleach", "9", "189.87.65.254", "2008-10-15 13:01:07", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1691", "13:36:16", "00:04:11", "13:40:27", "../musicas/animes/bleach/_home_made_kazoku_-_thank_you.mp3", "Home Made Kazoku - Thank You", "Bleach", "13", "189.87.71.197", "2009-02-14 10:52:47", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1692", "10:09:12", "00:04:22", "10:13:34", "../musicas/animes/bleach/_hoshimura_mai_-_sakura_biyori.mp3", "Hoshimura Mai - Sakura Biyori", "Bleach", "8", "200.249.114.67", "2009-01-03 22:52:59", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1693", "16:27:08", "00:04:28", "16:31:36", "../musicas/animes/bleach/_ikimonogakari_-_hanabi.mp3", "Ikimonogakari - Hanabi", "Bleach", "14", "189.87.70.80", "2008-11-03 10:48:42", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1694", "22:05:32", "00:03:55", "22:09:27", "../musicas/animes/bleach/_june_-_baby_it_s_you.mp3", "June - Baby It S You", "Bleach", "16", "189.87.71.197", "2009-02-14 11:22:51", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1695", "19:07:08", "00:04:32", "19:11:40", "../musicas/animes/bleach/_orange_range_-_asterisk.mp3", "Orange Range - Asterisk", "Bleach", "19", "189.87.71.197", "2009-02-14 11:02:26", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1696", "13:23:22", "00:03:56", "13:27:18", "../musicas/animes/bleach/_ore_ska_band_-_tsumasaki.mp3", "Ore Ska Band - Tsumasaki", "Bleach", "7", "200.249.114.67", "2008-11-29 12:01:53", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1697", "11:20:19", "00:05:01", "11:25:20", "../musicas/animes/bleach/_rie_fu_-_life_is_like_a_boat.mp3", "Rie Fu - Life Is Like A Boat", "Bleach", "14", "200.249.114.67", "2009-01-03 23:02:58", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1698", "13:55:47", "00:03:45", "13:59:32", "../musicas/animes/bleach/_skoop_on_somebody_-_happypeople.mp3", "Skoop On Somebody - Happypeople", "Bleach", "25", "201.45.104.55", "2008-11-27 11:03:34", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1699", "09:23:50", "00:04:26", "09:28:16", "../musicas/animes/bleach/_sunset_swish_-_my_pace.mp3", "Sunset Swish - My Pace", "Bleach", "10", "189.93.61.191", "2009-02-28 15:09:55", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1700", "16:44:19", "00:04:20", "16:48:39", "../musicas/animes/bleach/_takacha_-_movin.mp3", "Takacha - Movin", "Bleach", "16", "201.45.104.55", "2008-11-27 13:21:23", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1701", "13:59:33", "00:03:14", "14:02:47", "../musicas/animes/bleach/_younha_-_houki_hoshi.mp3", "Younha - Houki Hoshi", "Bleach", "10", "189.87.62.113", "2009-01-31 17:59:21", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1702", "22:37:01", "00:04:01", "22:41:02", "../musicas/animes/bleach/_yui_-_life.mp3", "Yui - Life", "Bleach", "11", "189.93.61.191", "2009-02-28 15:10:00", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1705", "12:04:47", "00:00:05", "12:04:52", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1706", "10:45:03", "00:00:36", "10:45:39", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1996", "20:20:42", "00:00:44", "20:21:26", "../musicas/publicidade/vinhetas_tuatec/aumente_o_volume.mp3", "Aumente O Volume", "Vinhetas Tuatec", "29", "201.45.104.55", "2009-03-03 15:18:26", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1708", "24:19:40", "00:00:04", "24:19:44", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1709", "10:14:12", "00:00:31", "10:14:43", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1710", "22:09:28", "00:00:04", "22:09:32", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1711", "19:02:14", "00:01:14", "19:03:28", "../musicas/animes/chobits/_01_-_morning_morning.mp3", "01 - Morning Morning", "Chobits", "9", "189.87.71.197", "2009-02-14 09:58:24", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1712", "09:11:17", "00:02:36", "09:13:53", "../musicas/animes/chobits/_02_-_katakoto_no_koi.mp3", "02 - Katakoto No Koi", "Chobits", "10", "201.45.104.55", "2008-12-02 11:45:34", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1713", "11:28:44", "00:04:50", "11:33:34", "../musicas/animes/chobits/_03_-_let_me_be_with_you.mp3", "03 - Let Me Be With You", "Chobits", "10", "200.249.114.67", "2009-01-31 10:57:39", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1714", "09:43:09", "00:03:36", "09:46:45", "../musicas/animes/chobits/_04_-_soshite_sekai_ha_kyou_mo_hajimaru.mp3", "04 - Soshite Sekai Ha Kyou Mo Hajimaru", "Chobits", "11", "200.249.114.67", "2009-01-03 23:08:12", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1720", "18:11:32", "00:02:52", "18:14:24", "../musicas/animes/chobits/_10_-_hirusagari_no_tawamure.mp3", "10 - Hirusagari No Tawamure", "Chobits", "12", "189.87.71.197", "2009-02-14 10:49:00", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1721", "22:58:38", "00:02:29", "23:01:07", "../musicas/animes/chobits/_11_-_two_of_us.mp3", "11 - Two Of Us", "Chobits", "10", "189.87.62.113", "2009-01-31 18:34:28", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1723", "10:17:16", "00:00:05", "10:17:21", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1724", "13:02:22", "00:00:36", "13:02:58", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1993", "09:20:06", "00:00:15", "09:20:21", "../musicas/publicidade/vinhetas_tuatec/a_sua_musica_toca_aqui_2.mp3", "A Sua Musica Toca Aqui 2", "Vinhetas Tuatec", "33", "201.45.104.55", "2009-03-03 15:33:28", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1726", "09:20:22", "00:00:04", "09:20:26", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1727", "19:27:16", "00:00:31", "19:27:47", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1728", "24:09:49", "00:00:04", "24:09:53", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1932", "08:44:37", "00:03:22", "08:47:59", "../musicas/bandas_nacionais/enverso/rotulo.mp3", "Rotulo", "Enverso", "33", "189.93.61.191", "2009-02-28 15:10:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1933", "24:01:27", "00:04:37", "24:06:04", "../musicas/bandas_nacionais/enverso/temporal.mp3", "Temporal", "Enverso", "44", "189.0.235.5", "2009-02-18 18:09:35", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1934", "14:14:27", "00:03:49", "14:18:16", "../musicas/bandas_nacionais/fresno/absolutamente_nada.mp3", "Absolutamente Nada", "Fresno", "14", "189.93.61.191", "2009-02-28 15:09:36", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1880", "10:29:16", "00:01:36", "10:30:52", "../musicas/animes/naruto_shippuuden/_07_the_raising_fighting_spirit.mp3", "The Raising Fighting Spirit", "Naruto Shippuuden", "0", NULL, "0000-00-00 00:00:00", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1927", "17:00:22", "00:03:22", "17:03:44", "../musicas/bandas_nacionais/nx_zero/incompleta.mp3", "Incompleta", "Nx Zero", "13", "189.0.235.5", "2009-02-18 17:24:23", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1928", "14:31:11", "00:03:32", "14:34:43", "../musicas/bandas_nacionais/enverso/flores_velhas.mp3", "Flores Velhas", "Enverso", "43", "201.45.104.55", "2009-02-20 11:23:15", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1929", "12:38:20", "00:03:18", "12:41:38", "../musicas/bandas_nacionais/enverso/gigante.mp3", "Gigante", "Enverso", "22", "201.45.104.55", "2009-02-27 10:34:31", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1924", "16:52:14", "00:02:59", "16:55:13", "../musicas/bandas_nacionais/rockassetes/pipa.mp3", "Pipa", "Rockassetes", "38", "201.45.104.55", "2009-01-27 11:30:39", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1930", "11:05:15", "00:03:06", "11:08:21", "../musicas/bandas_nacionais/enverso/lucida_casual.mp3", "Lucida Casual", "Enverso", "40", "201.45.104.55", "2009-03-03 15:02:37", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1945", "15:14:39", "00:02:25", "15:17:04", "../musicas/bandas_nacionais/volver/nao_trate_ele_assim_(demo).mp3", "Nao Trate Ele Assim (demo)", "Volver", "23", "201.45.104.55", "2009-02-20 10:57:20", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1923", "18:43:46", "00:04:32", "18:48:18", "../musicas/bandas_nacionais/rockassetes/garota_do_tenis_vermelho.mp3", "Garota Do Tenis Vermelho", "Rockassetes", "39", "189.93.61.191", "2009-02-28 15:09:56", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1931", "08:19:39", "00:03:45", "08:23:24", "../musicas/bandas_nacionais/enverso/meu_lugar.mp3", "Meu Lugar", "Enverso", "29", "200.249.114.67", "2009-02-17 19:58:02", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1834", "09:07:01", "00:00:04", "09:07:05", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1833", "08:23:25", "00:00:31", "08:23:56", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1753", "10:34:33", "00:06:07", "10:40:40", "../musicas/animes/onegai_teacher/_ano_hi_no_kimi_e.mp3", "Ano Hi No Kimi E", "Onegai Teacher", "14", "201.45.104.55", "2008-12-02 12:42:38", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1754", "23:15:53", "00:00:05", "23:15:58", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1755", "14:30:34", "00:00:36", "14:31:10", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1995", "22:25:43", "00:00:07", "22:25:50", "../musicas/publicidade/vinhetas_tuatec/aqui_toca_mais_musicas.mp3", "Aqui Toca Mais Musicas", "Vinhetas Tuatec", "30", "189.87.71.197", "2009-02-14 10:48:48", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1757", "24:29:55", "00:00:04", "24:29:59", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1758", "22:14:29", "00:00:31", "22:15:00", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1759", "19:03:29", "00:00:04", "19:03:33", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1984", "15:55:10", "00:03:51", "15:59:01", "../musicas/bandas_internacionais/the_corrs/only_when_i_sleep.mp3", "Only When I Sleep", "The Corrs", "11", "201.45.104.55", "2009-03-03 14:35:26", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1985", "21:10:19", "00:04:30", "21:14:49", "../musicas/bandas_internacionais/the_cranberries/linger.mp3", "Linger", "The Cranberries", "14", "201.45.104.55", "2009-02-05 13:32:39", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1986", "14:20:51", "00:03:56", "14:24:47", "../musicas/bandas_internacionais/the_offspring/have_you_ever.mp3", "Have You Ever", "The Offspring", "12", "189.87.71.197", "2009-02-14 10:57:03", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1970", "18:39:24", "00:04:21", "18:43:45", "../musicas/bandas_internacionais/firehouse/i_live_my_life_for_you.mp3", "I Live My Life For You", "Firehouse", "11", "201.45.104.55", "2009-02-19 10:47:24", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1972", "09:56:56", "00:05:56", "10:02:52", "../musicas/bandas_internacionais/guns_n_roses/sweet_child_o_mine.mp3", "Sweet Child O Mine", "Guns N Roses", "9", "200.249.114.67", "2009-01-04 01:32:31", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1973", "14:54:36", "00:04:39", "14:59:15", "../musicas/bandas_internacionais/laura_pausini/ascolta_il_tuo_cuore.mp3", "Ascolta il tuo cuore", "Laura Pausini", "8", "201.45.104.55", "2009-01-14 08:43:10", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1974", "17:03:45", "00:03:41", "17:07:26", "../musicas/bandas_internacionais/laura_pausini/seamisai.mp3", "Seamisai", "Laura Pausini", "10", "201.45.104.55", "2009-02-20 11:19:12", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1975", "09:35:14", "00:03:47", "09:39:01", "../musicas/bandas_internacionais/mono_tune/oh_hello.mp3", "Oh Hello", "Mono Tune", "9", "200.249.114.67", "2009-02-09 19:35:36", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1976", "22:28:23", "00:03:50", "22:32:13", "../musicas/bandas_internacionais/mono_tune/poor_heart_and_it_troubles.mp3", "Poor Heart And It Troubles", "Mono Tune", "8", "200.249.114.67", "2009-01-31 11:12:01", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1977", "17:15:11", "00:02:55", "17:18:06", "../musicas/bandas_internacionais/mono_tune/sunny_hours.mp3", "Sunny Hours", "Mono Tune", "10", "201.45.104.55", "2009-02-20 10:45:41", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1978", "16:24:04", "00:03:03", "16:27:07", "../musicas/bandas_internacionais/phone_trio/crystal_clear.mp3", "Crystal Clear", "Phone Trio", "9", "189.87.72.60", "2009-02-06 12:28:43", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1979", "18:32:36", "00:03:06", "18:35:42", "../musicas/bandas_internacionais/phone_trio/hooker.mp3", "Hooker", "Phone Trio", "14", "201.45.104.55", "2009-02-04 09:23:07", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1980", "14:40:07", "00:03:22", "14:43:29", "../musicas/bandas_internacionais/phone_trio/loves_me_so,_loves_me_not.mp3", "Loves Me So, Loves Me Not", "Phone Trio", "8", "200.249.114.67", "2009-01-04 01:03:09", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1981", "19:54:02", "00:05:39", "19:59:41", "../musicas/bandas_internacionais/silverchair/across_the_night.mp3", "Across The Night", "Silverchair", "10", "127.0.0.1", "2009-03-07 19:52:42", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1982", "13:12:54", "00:04:05", "13:16:59", "../musicas/bandas_internacionais/silverchair/the_greatest_view.mp3", "The Greatest View", "Silverchair", "11", "189.87.71.197", "2009-02-16 08:49:59", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1774", "20:04:57", "00:00:05", "20:05:02", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1775", "14:10:26", "00:00:36", "14:11:02", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1990", "24:38:43", "00:03:27", "24:42:10", "../musicas/bandas_nacionais/acustika/uma_cancao_pra_vc.mp3", "Uma Cancao Pra Vc", "Acustika", "13", "189.87.71.197", "2009-02-14 09:59:44", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1777", "14:37:43", "00:00:04", "14:37:47", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1778", "20:00:00", "00:00:31", "20:00:31", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1779", "24:30:06", "00:00:04", "24:30:10", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1780", "12:41:44", "00:03:47", "12:45:31", "../musicas/bandas_internacionais/enia/_anywhere_is.mp3", "Anywhere Is", "Enia", "17", "201.45.104.55", "2009-02-20 10:52:08", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1781", "12:55:04", "00:03:29", "12:58:33", "../musicas/bandas_internacionais/enia/_boadicea.mp3", "Boadicea", "Enia", "16", "201.45.104.55", "2009-01-27 12:42:18", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1782", "25:50:50", "00:02:56", "25:53:46", "../musicas/bandas_internacionais/enia/_book_of_days.mp3", "Book Of Days", "Enia", "15", "201.45.104.55", "2009-02-20 10:37:38", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1783", "20:05:03", "00:03:59", "20:09:02", "../musicas/bandas_internacionais/enia/_caribbean_blue.mp3", "Caribbean Blue", "Enia", "17", "127.0.0.1", "2009-03-07 20:01:25", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1784", "20:52:32", "00:04:40", "20:57:12", "../musicas/bandas_internacionais/enia/_china_roses.mp3", "China Roses", "Enia", "21", "189.97.15.138", "2009-02-20 09:04:35", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1785", "17:31:30", "00:01:53", "17:33:23", "../musicas/bandas_internacionais/enia/_ebudae.mp3", "Ebudae", "Enia", "16", "189.87.71.197", "2009-02-13 11:44:01", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1786", "15:03:47", "00:03:55", "15:07:42", "../musicas/bandas_internacionais/enia/_marble_halls.mp3", "Marble Halls", "Enia", "17", "189.0.235.5", "2009-02-18 18:01:28", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1787", "09:07:06", "00:03:39", "09:10:45", "../musicas/bandas_internacionais/enia/_on_my_way_home.mp3", "On My Way Home", "Enia", "16", "189.87.71.197", "2009-02-14 22:09:55", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1788", "18:58:53", "00:03:20", "19:02:13", "../musicas/bandas_internacionais/enia/_only_if.mp3", "Only If", "Enia", "15", "189.87.64.9", "2009-01-25 20:58:14", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1789", "12:45:32", "00:04:27", "12:49:59", "../musicas/bandas_internacionais/enia/_orinoco_flow.mp3", "Orinoco Flow", "Enia", "13", "201.45.104.55", "2009-02-19 10:52:03", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1790", "24:30:34", "00:04:15", "24:34:49", "../musicas/bandas_internacionais/enia/_paint_the_sky_with_stars.mp3", "Paint The Sky With Stars", "Enia", "14", "189.97.15.138", "2009-02-20 09:00:11", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1791", "17:18:39", "00:03:40", "17:22:19", "../musicas/bandas_internacionais/enia/_shepherd_moons.mp3", "Shepherd Moons", "Enia", "13", "201.45.104.55", "2009-01-05 12:14:50", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1792", "13:51:29", "00:04:11", "13:55:40", "../musicas/bandas_internacionais/enia/_storms_in_africa.mp3", "Storms In Africa", "Enia", "10", "189.87.71.197", "2009-02-13 12:00:09", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1793", "21:50:19", "00:02:58", "21:53:17", "../musicas/bandas_internacionais/enia/_the_celts.mp3", "The Celts", "Enia", "20", "201.45.104.55", "2009-02-27 10:30:33", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1794", "25:03:53", "00:04:20", "25:08:13", "../musicas/bandas_internacionais/enia/_the_memory_of_trees.mp3", "The Memory Of Trees", "Enia", "10", "201.45.104.55", "2009-02-20 10:24:56", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1795", "23:33:12", "00:02:27", "23:35:39", "../musicas/bandas_internacionais/enia/_watermark.mp3", "Watermark", "Enia", "14", "189.0.235.5", "2009-02-18 18:34:36", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1796", "09:06:55", "00:00:05", "09:07:00", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1797", "21:26:48", "00:00:36", "21:27:24", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1799", "14:11:03", "00:00:04", "14:11:07", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1800", "24:59:38", "00:00:31", "25:00:09", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1801", "19:03:34", "00:00:04", "19:03:38", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1803", "08:09:14", "00:03:26", "08:12:40", "../musicas/new_age/catherine_duc/one_autumn_day.mp3", "One Autumn Day", "Catherine Duc", "20", "189.87.71.197", "2009-02-14 11:35:21", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1804", "12:26:24", "00:05:44", "12:32:08", "../musicas/new_age/alex_tiuniaev/christmas_song.mp3", "Christmas Song", "Alex Tiuniaev", "14", "189.0.235.5", "2009-02-18 18:21:59", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1805", "24:20:28", "00:02:51", "24:23:19", "../musicas/new_age/alex_tiuniaev/ghosts.mp3", "Ghosts", "Alex Tiuniaev", "13", "200.249.114.67", "2009-02-17 20:02:42", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1806", "10:02:53", "00:02:46", "10:05:39", "../musicas/new_age/alex_tiuniaev/music_for_a_film.mp3", "Music For A Film", "Alex Tiuniaev", "15", "201.45.104.55", "2009-01-27 12:20:35", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1807", "21:01:52", "00:03:05", "21:04:57", "../musicas/new_age/alex_tiuniaev/sara.mp3", "Sara", "Alex Tiuniaev", "18", "127.0.0.1", "2009-03-08 21:02:05", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1808", "19:41:33", "00:03:54", "19:45:27", "../musicas/new_age/alex_tiuniaev/the_gray_wanderer.mp3", "The Gray Wanderer", "Alex Tiuniaev", "15", "127.0.0.1", "2009-03-07 19:40:29", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1809", "13:46:49", "00:04:39", "13:51:28", "../musicas/new_age/alex_tiuniaev/treedreams_(part_1).mp3", "Treedreams (part 1)", "Alex Tiuniaev", "13", "201.45.104.55", "2009-01-27 11:33:52", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1810", "16:35:55", "00:04:13", "16:40:08", "../musicas/new_age/alex_tiuniaev/treedreams_(part_3).mp3", "Treedreams (part 3)", "Alex Tiuniaev", "12", "200.249.114.67", "2009-02-27 21:57:33", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1811", "24:10:04", "00:00:05", "24:10:09", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1812", "25:08:14", "00:00:36", "25:08:50", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1814", "14:30:29", "00:00:04", "14:30:33", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1815", "17:18:07", "00:00:31", "17:18:38", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1816", "24:26:58", "00:00:04", "24:27:02", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1916", "22:02:25", "00:03:06", "22:05:31", "../musicas/bandas_nacionais/enverso/lucida_casual.mp3", "Lucida Casual", "Enverso", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1829", "24:30:00", "00:00:05", "24:30:05", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1830", "12:14:13", "00:00:36", "12:14:49", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1832", "24:06:05", "00:00:04", "24:06:09", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1639", "14:48:08", "00:02:19", "14:50:27", "../musicas/animes/saikano/04_kanashimi_no_nukumori.mp3", "04 Kanashimi No Nukumori", "Saikano", "13", "189.87.62.113", "2009-01-31 19:32:03", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1638", "17:58:57", "00:03:35", "18:02:32", "../musicas/animes/saikano/03_futari_no_sora.mp3", "03 Futari No Sora", "Saikano", "9", "200.249.114.67", "2008-11-20 19:03:38", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1637", "17:07:33", "00:03:12", "17:10:45", "../musicas/animes/saikano/02_hikari_no_taba_kumo_no_umi.mp3", "02 Hikari No Taba Kumo No Umi", "Saikano", "10", "189.93.61.191", "2009-02-28 15:09:58", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1635", "17:58:15", "00:00:04", "17:58:19", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1636", "08:48:00", "00:01:35", "08:49:35", "../musicas/animes/saikano/01_koi_suru_kimochi_-_yuria_yato_-_animation_edit.mp3", "01 Koi Suru Kimochi - Yuria Yato - Animation Edit", "Saikano", "10", "201.45.104.55", "2008-11-26 12:16:17", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1634", "11:39:18", "00:00:31", "11:39:49", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1633", "24:26:53", "00:00:04", "24:26:57", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1631", "12:15:07", "00:00:36", "12:15:43", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1617", "14:24:48", "00:02:24", "14:27:12", "../musicas/animes/digimon/_movie_-_here_we_go.mp3", "Movie - Here We Go", "Digimon", "13", "201.45.104.55", "2008-12-02 11:36:09", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1618", "23:31:40", "00:01:31", "23:33:11", "../musicas/animes/digimon/_tamers_-_the_biggest_dreamer_(opening_theme)_(japonise).mp3", "Tamers - The Biggest Dreamer (opening Theme) (japonise)", "Digimon", "8", "201.45.104.55", "2008-11-27 08:35:32", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1619", "25:27:32", "00:05:57", "25:33:29", "../musicas/animes/kingdom_hearth/_passion_-_after_battle_version.mp3", "Passion - After Battle Version", "Kingdom Hearth", "12", "189.87.62.113", "2009-01-31 17:34:50", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1620", "21:04:58", "00:05:20", "21:10:18", "../musicas/animes/serial_experimental_lain/duvet_(cyberia_remix).mp3", "Duvet (cyberia Remix)", "Serial Experimental Lain", "10", "189.87.66.222", "2008-10-09 17:32:10", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1622", "25:02:33", "00:01:10", "25:03:43", "../musicas/animes/saint_seiya_-_galaxian_wars/06_blue_forever_tv_size.mp3", "06 Blue Forever Tv Size", "Saint Seiya - Galaxian Wars", "12", "200.249.114.67", "2009-01-03 23:38:34", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1625", "17:28:01", "00:00:35", "17:28:36", "../musicas/animes/yu_yu_hakusho/amor_a_deriva.mp3", "Amor A Deriva", "Yu Yu Hakusho", "10", "189.87.51.147", "2008-10-16 13:23:42", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1626", "12:04:58", "00:00:34", "12:05:32", "../musicas/animes/yu_yu_hakusho/eu_vou_dizer_adeus.mp3", "Eu Vou Dizer Adeus", "Yu Yu Hakusho", "11", "189.87.71.197", "2009-02-14 11:31:28", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1627", "24:44:23", "00:01:22", "24:45:45", "../musicas/animes/yu_yu_hakusho/geracao_dos_sonhos.mp3", "Geracao Dos Sonhos", "Yu Yu Hakusho", "5", "201.45.104.55", "2008-11-11 09:25:01", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1628", "17:27:16", "00:00:28", "17:27:44", "../musicas/animes/yu_yu_hakusho/o_tempo.mp3", "O Tempo", "Yu Yu Hakusho", "9", "200.249.114.67", "2009-01-03 23:37:57", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1629", "14:34:52", "00:01:12", "14:36:04", "../musicas/animes/yu_yu_hakusho/sorriso_contagiante.mp3", "Sorriso Contagiante", "Yu Yu Hakusho", "11", "201.45.104.55", "2008-12-02 08:56:37", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1630", "13:55:41", "00:00:05", "13:55:46", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1616", "14:02:48", "00:04:12", "14:07:00", "../musicas/animes/digimon/_evolution_theme.mp3", "Evolution Theme", "Digimon", "11", "201.45.104.55", "2008-12-02 12:18:56", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1615", "23:38:47", "00:04:05", "23:42:52", "../musicas/animes/neon_genesis_evangelion/opening_theme.mp3", "Opening Theme", "Neon Genesis Evangelion", "13", "189.87.62.250", "2008-11-06 11:39:07", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1614", "08:15:52", "00:03:46", "08:19:38", "../musicas/animes/death_note/_the_world_(nightmare).mp3", "The World (nightmare)", "Death Note", "19", "201.45.104.55", "2008-11-26 11:38:25", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1609", "24:19:35", "00:00:04", "24:19:39", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1610", "12:58:34", "00:00:31", "12:59:05", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1611", "25:56:30", "00:00:04", "25:56:34", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1612", "20:34:23", "00:04:57", "20:39:20", "../musicas/animes/ghost_in_the_shell/_inner_universe.mp3", "Inner Universe", "Ghost In The Shell", "6", "200.249.114.67", "2009-01-03 23:27:14", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1613", "08:51:59", "00:05:29", "08:57:28", "../musicas/animes/ghost_in_the_shell/_origa_-_rise.mp3", "Origa - Rise", "Ghost In The Shell", "7", "201.45.104.55", "2008-12-02 10:39:16", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1988", "22:44:36", "00:03:03", "22:47:39", "../musicas/bandas_internacionais/the_offspring/the_kids_arent_alright.mp3", "The Kids Arent Alright", "The Offspring", "14", "201.45.104.55", "2009-02-03 08:40:22", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1607", "17:33:37", "00:00:36", "17:34:13", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1604", "23:19:47", "00:04:34", "23:24:21", "../musicas/animes/tsubasa_chronicle/_yume_no_tsubasa.mp3", "Yume No Tsubasa", "Tsubasa Chronicle", "10", "201.45.104.55", "2008-12-02 11:11:48", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1606", "09:42:26", "00:00:05", "09:42:31", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1603", "13:20:46", "00:02:35", "13:23:21", "../musicas/animes/tsubasa_chronicle/_you_are_my_love.mp3", "You Are My Love", "Tsubasa Chronicle", "6", "189.87.62.113", "2009-01-31 18:57:35", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1602", "16:40:09", "00:04:09", "16:44:18", "../musicas/animes/tsubasa_chronicle/_when_two_powers_collide.mp3", "When Two Powers Collide", "Tsubasa Chronicle", "21", "201.45.104.55", "2008-11-27 10:50:15", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1601", "19:45:28", "00:01:50", "19:47:18", "../musicas/animes/tsubasa_chronicle/_wayside.mp3", "Wayside", "Tsubasa Chronicle", "12", "127.0.0.1", "2009-03-07 19:44:25", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1600", "10:53:18", "00:03:49", "10:57:07", "../musicas/animes/tsubasa_chronicle/_voices_silently_sing.mp3", "Voices Silently Sing", "Tsubasa Chronicle", "13", "189.93.61.191", "2009-02-28 14:56:39", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1599", "15:24:24", "00:04:37", "15:29:01", "../musicas/animes/tsubasa_chronicle/_tsubasa.mp3", "Tsubasa", "Tsubasa Chronicle", "11", "189.87.71.61", "2008-11-30 22:19:32", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1598", "25:56:35", "00:02:18", "25:58:53", "../musicas/animes/tsubasa_chronicle/_the_dreamers.mp3", "The Dreamers", "Tsubasa Chronicle", "13", "201.45.104.55", "2008-12-02 11:32:39", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1597", "14:37:53", "00:01:47", "14:39:40", "../musicas/animes/tsubasa_chronicle/_strange_names.mp3", "Strange Names", "Tsubasa Chronicle", "10", "189.87.65.254", "2008-10-15 15:56:19", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1596", "25:58:54", "00:02:10", "26:01:04", "../musicas/animes/tsubasa_chronicle/_storm_and_fire.mp3", "Storm And Fire", "Tsubasa Chronicle", "11", "201.45.104.55", "2008-11-27 10:28:46", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1595", "08:05:31", "00:03:42", "08:09:13", "../musicas/animes/tsubasa_chronicle/_ship_of_fools.mp3", "Ship Of Fools", "Tsubasa Chronicle", "12", "201.45.104.55", "2008-11-18 10:43:42", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1594", "14:18:17", "00:02:33", "14:20:50", "../musicas/animes/tsubasa_chronicle/_morning_moon.mp3", "Morning Moon", "Tsubasa Chronicle", "16", "189.81.162.170", "2008-12-02 17:09:11", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1593", "22:47:40", "00:01:59", "22:49:39", "../musicas/animes/tsubasa_chronicle/_lost_wings.mp3", "Lost Wings", "Tsubasa Chronicle", "13", "200.249.114.67", "2009-01-03 23:11:57", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1592", "22:53:13", "00:05:24", "22:58:37", "../musicas/animes/tsubasa_chronicle/_loop_(full).mp3", "Loop (full)", "Tsubasa Chronicle", "8", "189.0.228.207", "2009-02-21 13:47:28", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1591", "16:14:24", "00:05:01", "16:19:25", "../musicas/animes/tsubasa_chronicle/_kaze_no_machi_he.mp3", "Kaze No Machi He", "Tsubasa Chronicle", "15", "189.87.71.197", "2009-02-14 11:14:09", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1588", "23:58:29", "00:02:57", "24:01:26", "../musicas/animes/tsubasa_chronicle/_hear_our_prayer.mp3", "Hear Our Prayer", "Tsubasa Chronicle", "11", "200.249.114.67", "2008-11-28 17:38:15", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1589", "08:29:28", "00:02:35", "08:32:03", "../musicas/animes/tsubasa_chronicle/_if_you_are_my_love.mp3", "If You Are My Love", "Tsubasa Chronicle", "13", "200.249.114.67", "2009-01-03 23:42:12", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1590", "12:18:29", "00:04:10", "12:22:39", "../musicas/animes/tsubasa_chronicle/_jasmin.mp3", "Jasmin", "Tsubasa Chronicle", "9", "189.87.62.113", "2009-01-31 18:53:14", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1587", "11:39:50", "00:02:10", "11:42:00", "../musicas/animes/tsubasa_chronicle/_guess_how_much_i_love_you.mp3", "Guess How Much I Love You", "Tsubasa Chronicle", "9", "189.87.67.100", "2008-10-06 09:59:29", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1586", "15:53:14", "00:01:50", "15:55:04", "../musicas/animes/tsubasa_chronicle/_fatigue.mp3", "Fatigue", "Tsubasa Chronicle", "11", "201.45.104.55", "2008-12-02 10:50:43", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1585", "13:30:49", "00:03:32", "13:34:21", "../musicas/animes/tsubasa_chronicle/_endlessly.mp3", "Endlessly", "Tsubasa Chronicle", "15", "200.249.114.67", "2009-01-03 23:46:46", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1584", "20:16:53", "00:03:48", "20:20:41", "../musicas/animes/tsubasa_chronicle/_dewdrops.mp3", "Dewdrops", "Tsubasa Chronicle", "10", "201.45.104.55", "2008-11-27 12:07:24", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1918", "16:19:26", "00:04:37", "16:24:03", "../musicas/bandas_nacionais/enverso/temporal.mp3", "Temporal", "Enverso", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1582", "20:59:20", "00:02:05", "21:01:25", "../musicas/animes/tsubasa_chronicle/_break_the_sword_of_justice.mp3", "Break The Sword Of Justice", "Tsubasa Chronicle", "5", "201.45.104.55", "2008-11-18 10:08:01", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1581", "11:45:32", "00:04:27", "11:49:59", "../musicas/animes/tsubasa_chronicle/_blaze_(full).mp3", "Blaze (full)", "Tsubasa Chronicle", "11", "189.87.71.197", "2009-02-14 11:47:19", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1580", "21:57:22", "00:03:09", "22:00:31", "../musicas/animes/tsubasa_chronicle/_best_years_of_our_lives.mp3", "Best Years Of Our Lives", "Tsubasa Chronicle", "14", "200.249.114.67", "2009-01-03 23:34:41", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1915", "24:23:20", "00:03:32", "24:26:52", "../musicas/bandas_nacionais/enverso/flores_velhas.mp3", "Flores Velhas", "Enverso", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1578", "10:43:05", "00:01:57", "10:45:02", "../musicas/animes/tsubasa_chronicle/_a_tiny_sunshine.mp3", "A Tiny Sunshine", "Tsubasa Chronicle", "10", "189.87.71.197", "2009-02-14 10:29:06", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1577", "26:01:33", "00:04:03", "26:05:36", "../musicas/animes/tsubasa_chronicle/_a_song_of_storm_and_fire.mp3", "A Song Of Storm And Fire", "Tsubasa Chronicle", "8", "189.87.63.87", "2008-09-29 22:18:06", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1576", "13:46:44", "00:00:04", "13:46:48", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1575", "14:13:55", "00:00:31", "14:14:26", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1574", "12:41:39", "00:00:04", "12:41:43", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1994", "13:02:04", "00:00:17", "13:02:21", "../musicas/publicidade/vinhetas_tuatec/a_sua_musica_toca_aqui_3.mp3", "A Sua Musica Toca Aqui 3", "Vinhetas Tuatec", "31", "127.0.0.1", "2009-03-07 19:58:24", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1572", "24:19:45", "00:00:36", "24:20:21", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1569", "24:42:11", "00:02:11", "24:44:22", "../musicas/animes/ah_megami_sama/_piano_sonata_-_illusion.mp3", "Piano Sonata - Illusion", "Ah Megami Sama", "14", "189.87.62.113", "2009-01-31 17:57:06", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1570", "18:27:34", "00:05:01", "18:32:35", "../musicas/animes/ah_megami_sama_sorezore_no_tsubasa/_koibito_doushi.mp3", "Koibito Doushi", "Ah Megami Sama Sorezore No Tsubasa", "8", "189.87.67.100", "2008-10-06 13:39:47", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1571", "23:49:39", "00:00:05", "23:49:44", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1568", "22:32:14", "00:04:46", "22:37:00", "../musicas/animes/ah_megami_sama/_kami-sama_no_dengon.mp3", "Kami-sama No Dengon", "Ah Megami Sama", "14", "189.81.162.170", "2008-12-02 17:49:23", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1567", "08:32:04", "00:02:01", "08:34:05", "../musicas/animes/ah_megami_sama/_coro_di_dea_-_megamitachi_no_utagoe.mp3", "Coro Di Dea - Megamitachi No Utagoe", "Ah Megami Sama", "8", "201.45.104.55", "2008-12-02 10:06:38", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1566", "24:30:29", "00:00:04", "24:30:33", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1565", "17:42:17", "00:00:31", "17:42:48", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1564", "11:05:10", "00:00:04", "11:05:14", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1989", "21:53:18", "00:04:03", "21:57:21", "../musicas/bandas_nacionais/acustika/sonhos.mp3", "Sonhos", "Acustika", "14", "189.87.62.113", "2009-01-31 18:13:14", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1562", "11:11:49", "00:00:36", "11:12:25", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1559", "24:13:41", "00:02:54", "24:16:35", "../musicas/animes/haibane_renmei/_tsuki_to_aoi_kage.mp3", "Tsuki To Aoi Kage", "Haibane Renmei", "12", "201.45.104.55", "2008-11-27 11:18:01", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1560", "20:09:03", "00:02:10", "20:11:13", "../musicas/animes/haibane_renmei/_wasurarenai_koto.mp3", "Wasurarenai Koto", "Haibane Renmei", "10", "127.0.0.1", "2009-03-07 20:05:29", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1561", "08:37:13", "00:00:05", "08:37:18", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1558", "18:24:37", "00:02:24", "18:27:01", "../musicas/animes/haibane_renmei/_tatta_hitori_no_komoriuta.mp3", "Tatta Hitori No Komoriuta", "Haibane Renmei", "10", "201.45.104.55", "2008-12-02 11:42:47", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1557", "12:00:39", "00:04:07", "12:04:46", "../musicas/animes/haibane_renmei/_refrain_of_memory.mp3", "Refrain Of Memory", "Haibane Renmei", "18", "189.0.228.207", "2009-02-21 13:39:32", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1556", "11:33:35", "00:01:50", "11:35:25", "../musicas/animes/haibane_renmei/_old_home_no_hibi.mp3", "Old Home No Hibi", "Haibane Renmei", "6", "201.45.104.55", "2008-12-01 13:14:24", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1554", "25:00:10", "00:02:22", "25:02:32", "../musicas/animes/haibane_renmei/_kaze_wa_yyasashiku_hoonaderu.mp3", "Kaze Wa Yyasashiku Hoonaderu", "Haibane Renmei", "8", "189.93.61.191", "2009-02-28 15:09:58", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1553", "09:01:07", "00:01:51", "09:02:58", "../musicas/animes/haibane_renmei/_jiyuu_no_tori.mp3", "Jiyuu No Tori", "Haibane Renmei", "11", "189.81.162.170", "2008-12-02 16:47:16", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1551", "10:14:44", "00:02:31", "10:17:15", "../musicas/animes/haibane_renmei/_free_bird.mp3", "Free Bird", "Haibane Renmei", "13", "189.0.228.207", "2009-02-21 13:36:50", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1552", "14:59:16", "00:01:58", "15:01:14", "../musicas/animes/haibane_renmei/_gaihe.mp3", "Gaihe", "Haibane Renmei", "10", "200.249.114.67", "2009-01-03 23:39:54", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1548", "10:26:37", "00:02:38", "10:29:15", "../musicas/animes/haibane_renmei/_ailes_grises.mp3", "Ailes Grises", "Haibane Renmei", "7", "201.45.104.55", "2008-12-02 10:36:25", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1549", "19:19:37", "00:05:00", "19:24:37", "../musicas/animes/haibane_renmei/_blue_flow.mp3", "Blue Flow", "Haibane Renmei", "11", "127.0.0.1", "2009-03-07 19:19:22", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1546", "12:04:53", "00:00:04", "12:04:57", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1621", "09:13:54", "00:01:26", "09:15:20", "../musicas/animes/saint_seiya_-_galaxian_wars/01_pegasus_fantasy_-_tv_size.mp3", "01 Pegasus Fantasy - Tv Size", "Saint Seiya - Galaxian Wars", "11", "200.249.114.67", "2009-01-03 23:45:10", "1", "", "0", "0", "0", "0", "0", "0", "1");
INSERT INTO tbl_radioprogramacao VALUES("1545", "19:19:05", "00:00:31", "19:19:36", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1992", "12:50:00", "00:00:25", "12:50:25", "../musicas/publicidade/vinhetas_tuatec/a_sua_musica_toca_aqui_1.mp3", "A Sua Musica Toca Aqui 1", "Vinhetas Tuatec", "26", "201.45.104.55", "2009-03-03 15:29:28", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1544", "15:55:05", "00:00:04", "15:55:09", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1542", "17:58:20", "00:00:36", "17:58:56", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1541", "24:09:43", "00:00:05", "24:09:48", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1917", "15:17:05", "00:03:22", "15:20:27", "../musicas/bandas_nacionais/enverso/rotulo.mp3", "Rotulo", "Enverso", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1850", "17:07:27", "00:00:05", "17:07:32", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1851", "23:15:16", "00:00:36", "23:15:52", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1991", "11:45:04", "00:00:27", "11:45:31", "../musicas/publicidade/vinhetas_tuatec/a_radio_que_vai_pegar_voce.mp3", "A Radio Que Vai Pegar Voce", "Vinhetas Tuatec", "34", "189.93.61.191", "2009-02-28 16:21:04", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1853", "14:37:48", "00:00:04", "14:37:52", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1854", "22:10:10", "00:00:31", "22:10:41", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1855", "24:10:10", "00:00:04", "24:10:14", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1856", "09:18:58", "00:01:07", "09:20:05", "../musicas/new_age/priscilla_hernandez_(aka_yidneth)/ahora_que_te_has_ido_(for_kira).mp3", "Ahora Que Te Has Ido (for Kira)", "Priscilla Hernandez (aka Yidneth)", "10", "201.45.104.55", "2009-02-11 12:49:05", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1857", "25:33:30", "00:02:45", "25:36:15", "../musicas/new_age/priscilla_hernandez_(aka_yidneth)/but_if_you_go.mp3", "But If You Go", "Priscilla Hernandez (aka Yidneth)", "14", "201.45.104.55", "2009-01-27 10:33:31", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1858", "12:50:26", "00:04:37", "12:55:03", "../musicas/new_age/priscilla_hernandez_(aka_yidneth)/im_right_here.mp3", "Im Right Here", "Priscilla Hernandez (aka Yidneth)", "14", "189.87.71.197", "2009-02-16 09:03:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1859", "23:24:22", "00:03:35", "23:27:57", "../musicas/new_age/priscilla_hernandez_(aka_yidneth)/women_of_ireland_tragedy.mp3", "Women Of Ireland Tragedy", "Priscilla Hernandez (aka Yidneth)", "17", "201.45.104.55", "2009-01-27 10:39:12", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1860", "11:50:00", "00:00:05", "11:50:05", "../musicas/publicidade/pausa_comercial/radio@tuatec.com.mp3", "Radio@tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1861", "22:09:33", "00:00:36", "22:10:09", "../musicas/publicidade/pausa_comercial/temas_para_celular.mp3", "Temas Para Celular", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1969", "12:05:33", "00:05:54", "12:11:27", "../musicas/bandas_internacionais/bob_dylan/dreamin_of_you.mp3", "Dreamin Of You", "Bob Dylan", "13", "200.249.114.67", "2009-02-27 22:02:16", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1863", "11:25:21", "00:00:04", "11:25:25", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1864", "09:52:46", "00:00:31", "09:53:17", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1865", "11:11:44", "00:00:04", "11:11:48", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1866", "19:34:06", "00:03:08", "19:37:14", "../musicas/eletronica/as_7_melhores_2007_(disco_1)/01_-_offer_nissim_feat_maya_-_alone.mp3", "01 - Offer Nissim Feat Maya - Alone", "As 7 Melhores 2007 (disco 1)", "14", "127.0.0.1", "2009-03-07 19:32:58", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1867", "19:15:14", "00:03:50", "19:19:04", "../musicas/eletronica/as_7_melhores_2007_(disco_1)/03_-_tommy_vee_vs_andrea_t_mendoza_-_lovely.mp3", "03 - Tommy Vee Vs Andrea T Mendoza - Lovely", "As 7 Melhores 2007 (disco 1)", "13", "127.0.0.1", "2009-03-07 19:14:56", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1868", "17:51:15", "00:03:30", "17:54:45", "../musicas/eletronica/as_7_melhores_2007_(disco_1)/04_-_solu_music_feat_kimblee_-_fade.mp3", "04 - Solu Music Feat Kimblee - Fade", "As 7 Melhores 2007 (disco 1)", "14", "201.45.104.55", "2009-02-03 13:19:06", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1869", "09:53:29", "00:03:26", "09:56:55", "../musicas/eletronica/as_7_melhores_2007_(disco_1)/08_-_aurora_-_summer_son.mp3", "08 - Aurora - Summer Son", "As 7 Melhores 2007 (disco 1)", "20", "200.249.114.67", "2009-02-09 20:16:09", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1870", "08:41:05", "00:03:31", "08:44:36", "../musicas/eletronica/as_7_melhores_2007_(disco_1)/09_-_generation_3_feat_july_bell_-_like_a_woman.mp3", "09 - Generation 3 Feat July Bell - Like A Woman", "As 7 Melhores 2007 (disco 1)", "12", "201.45.104.55", "2009-01-27 11:26:54", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1871", "21:46:42", "00:03:36", "21:50:18", "../musicas/eletronica/as_7_melhores_2007_(disco_1)/10_-_pain_rossini_vs_spankox_-_hands_up_in_da_club.mp3", "10 - Pain Rossini Vs Spankox - Hands Up In Da Club", "As 7 Melhores 2007 (disco 1)", "16", "189.0.235.5", "2009-02-18 18:43:37", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1872", "24:52:51", "00:03:36", "24:56:27", "../musicas/eletronica/as_7_melhores_2007_(disco_1)/11_-_dj_damm_-_cash_machine.mp3", "11 - Dj Damm - Cash Machine", "As 7 Melhores 2007 (disco 1)", "13", "200.249.114.67", "2009-01-04 01:28:28", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1873", "08:57:29", "00:03:05", "09:00:34", "../musicas/eletronica/as_7_melhores_2007_(disco_1)/12_-_pawn_shop_-_shot_away.mp3", "12 - Pawn Shop - Shot Away", "As 7 Melhores 2007 (disco 1)", "16", "189.0.235.5", "2009-02-18 18:27:54", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1874", "17:11:23", "00:03:47", "17:15:10", "../musicas/eletronica/as_7_melhores_2007_(disco_1)/13_-_lex_-_you_came.mp3", "13 - Lex - You Came", "As 7 Melhores 2007 (disco 1)", "14", "201.45.104.55", "2009-02-03 10:41:33", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1875", "08:00:00", "00:03:45", "08:03:45", "../musicas/eletronica/as_7_melhores_2007_(disco_1)/14_-_fragma_e_kirsty_hawkshan_-_radio_waves.mp3", "14 - Fragma E Kirsty Hawkshan - Radio Waves", "As 7 Melhores 2007 (disco 1)", "16", "201.45.104.55", "2009-03-03 15:33:31", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1876", "17:48:13", "00:03:01", "17:51:14", "../musicas/eletronica/as_7_melhores_2007_(disco_1)/15_-_starchaser_feat_steve_edwards_-_fate.mp3", "15 - Starchaser Feat Steve Edwards - Fate", "As 7 Melhores 2007 (disco 1)", "12", "201.45.104.55", "2009-02-11 12:37:54", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1877", "13:09:26", "00:03:27", "13:12:53", "../musicas/eletronica/as_7_melhores_2007_(disco_1)/16_-_gambafreaks_feat_nicole_-_never_say_never.mp3", "16 - Gambafreaks Feat Nicole - Never Say Never", "As 7 Melhores 2007 (disco 1)", "17", "201.45.104.55", "2008-12-03 13:11:23", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1878", "21:43:51", "00:02:50", "21:46:41", "../musicas/eletronica/as_7_melhores_2007_(disco_1)/20_-_beatfreakz_-_somebodys_watching_me.mp3", "20 - Beatfreakz - Somebodys Watching Me", "As 7 Melhores 2007 (disco 1)", "18", "201.45.104.55", "2009-02-09 09:37:49", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1879", "19:27:48", "00:03:02", "19:30:50", "../musicas/eletronica/as_7_melhores_2007_(disco_1)/22_-_kasino_-_shake_it_(live_in_brazil).mp3", "22 - Kasino - Shake It (live In Brazil)", "As 7 Melhores 2007 (disco 1)", "11", "127.0.0.1", "2009-03-07 19:26:33", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1884", "09:18:53", "00:00:04", "09:18:57", "../musicas/publicidade/pausa_comercial/www.radio.tuatec.com.mp3", "Www.radio.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1885", "13:35:12", "00:00:31", "13:35:43", "../musicas/publicidade/pausa_comercial/www.servo.tuatec.com.mp3", "Www.servo.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1886", "23:31:35", "00:00:04", "23:31:39", "../musicas/publicidade/pausa_comercial/www.tuatec.com.mp3", "Www.tuatec.com", "Pausa Comercial", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1998", "21:01:26", "00:00:12", "21:01:38", "../musicas/publicidade/vinhetas_tuatec/nao_mude_nao_desligue_-_essa_e_a_melhor.mp3", "Nao Mude Nao Desligue - Essa E A Melhor", "Vinhetas Tuatec", "27", "127.0.0.1", "2009-03-08 21:01:52", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1946", "18:35:43", "00:03:40", "18:39:23", "../musicas/bandas_nacionais/volver/pra_deus_implorar.mp3", "Pra Deus Implorar", "Volver", "29", "200.249.114.67", "2009-02-27 22:08:17", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1947", "09:39:47", "00:02:38", "09:42:25", "../musicas/bandas_nacionais/volver/voce_que_pediu.mp3", "Voce Que Pediu", "Volver", "31", "189.87.71.197", "2009-02-14 10:23:20", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1944", "25:43:42", "00:04:09", "25:47:51", "../musicas/bandas_nacionais/volver/maquina_do_tempo.mp3", "Maquina Do Tempo", "Volver", "32", "189.97.15.138", "2009-02-20 09:13:09", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1891", "15:38:18", "00:03:32", "15:41:50", "../musicas/bandas_nacionais/enverso/flores_velhas.mp3", "Flores Velhas", "Enverso", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1892", "16:10:24", "00:03:22", "16:13:46", "../musicas/bandas_nacionais/enverso/rotulo.mp3", "Rotulo", "Enverso", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1893", "14:43:30", "00:04:37", "14:48:07", "../musicas/bandas_nacionais/enverso/temporal.mp3", "Temporal", "Enverso", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1894", "24:06:10", "00:03:32", "24:09:42", "../musicas/bandas_nacionais/udora/goodbye_alo.mp3", "Goodbye Alo", "Udora", "28", "201.45.104.55", "2009-03-03 14:39:46", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1895", "25:08:51", "00:04:15", "25:13:06", "../musicas/bandas_nacionais/udora/velho_lugar.mp3", "Velho Lugar", "Udora", "35", "201.45.104.55", "2009-03-03 15:45:12", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1896", "22:21:53", "00:03:49", "22:25:42", "../musicas/bandas_internacionais/css_donkey/01_jager_yoga.mp3", "01 Jager Yoga", "Css Donkey", "12", "189.87.71.197", "2009-02-16 09:07:42", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1897", "20:01:00", "00:03:19", "20:04:19", "../musicas/bandas_internacionais/css_donkey/02_rat_is_dead _(rage).mp3", "02 Rat Is Dead  (rage)", "Css Donkey", "17", "127.0.0.1", "2009-03-07 19:59:03", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1898", "15:10:43", "00:03:55", "15:14:38", "../musicas/bandas_internacionais/css_donkey/03_lets_reggae_all_night.mp3", "03 Lets Reggae All Night", "Css Donkey", "13", "201.45.104.55", "2009-03-03 15:33:28", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1899", "11:08:22", "00:03:21", "11:11:43", "../musicas/bandas_internacionais/css_donkey/04_give_up.mp3", "04 Give Up", "Css Donkey", "16", "200.249.114.67", "2009-02-17 19:54:33", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1900", "21:17:17", "00:03:31", "21:20:48", "../musicas/bandas_internacionais/css_donkey/05_left_behind.mp3", "05 Left Behind", "Css Donkey", "15", "189.97.15.138", "2009-02-20 09:21:18", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1901", "11:53:37", "00:03:28", "11:57:05", "../musicas/bandas_internacionais/css_donkey/06_beautiful_song.mp3", "06 Beautiful Song", "Css Donkey", "21", "201.45.104.55", "2009-02-19 10:31:49", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1902", "13:05:31", "00:03:26", "13:08:57", "../musicas/bandas_internacionais/css_donkey/07_how_i_became_paranoid.mp3", "07 How I Became Paranoid", "Css Donkey", "16", "201.45.104.55", "2009-02-11 12:29:38", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1903", "11:16:25", "00:03:53", "11:20:18", "../musicas/bandas_internacionais/css_donkey/08_move.mp3", "08 Move", "Css Donkey", "14", "189.87.71.197", "2009-02-17 09:08:07", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1904", "13:40:28", "00:03:17", "13:43:45", "../musicas/bandas_internacionais/css_donkey/09_i_fly.mp3", "09 I Fly", "Css Donkey", "17", "201.45.104.55", "2009-02-20 11:02:21", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1905", "09:31:37", "00:03:36", "09:35:13", "../musicas/bandas_internacionais/css_donkey/10_believe_achieve.mp3", "10 Believe Achieve", "Css Donkey", "12", "201.45.104.55", "2009-02-19 10:43:06", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1906", "11:35:26", "00:03:51", "11:39:17", "../musicas/bandas_internacionais/css_donkey/11_air_painter.mp3", "11 Air Painter", "Css Donkey", "16", "201.45.104.55", "2009-02-27 10:51:30", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1907", "13:02:59", "00:02:31", "13:05:30", "../musicas/bandas_nacionais/ramirez/girl.mp3", "Girl", "Ramirez", "22", "200.249.114.67", "2009-02-14 17:15:55", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1908", "21:35:32", "00:02:44", "21:38:16", "../musicas/bandas_nacionais/ramirez/matriz.mp3", "Matriz", "Ramirez", "28", "189.87.71.197", "2009-02-14 10:26:03", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1909", "25:39:09", "00:04:23", "25:43:32", "../musicas/bandas_nacionais/forfun/o_universo_a_nosso_favor.mp3", "O Universo A Nosso Favor", "Forfun", "10", "201.45.104.55", "2009-02-09 09:15:28", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1910", "09:15:21", "00:03:31", "09:18:52", "../musicas/bandas_nacionais/forfun/sol_ou_chuva.mp3", "Sol Ou Chuva", "Forfun", "23", "189.93.61.191", "2009-02-28 15:02:24", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1911", "23:56:04", "00:02:24", "23:58:28", "../musicas/bandas_nacionais/mombojo/o_mais_vendido.mp3", "O Mais Vendido", "Mombojo", "18", "200.249.114.67", "2009-02-17 21:50:47", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1912", "14:11:08", "00:02:46", "14:13:54", "../musicas/bandas_nacionais/limite_extenso/02_-_esqueci_de_mim_mesmo.mp3", "02 - Esqueci De Mim Mesmo", "Limite Extenso", "15", "201.45.104.55", "2009-02-11 12:47:32", "1", "Sergio (Baterista do Limite Extenso): OK Rui... mandei alhumas musicas da nossa ex banda! Tem a minha autorização para por no ar sem problema nenhum! ... Cada um dos integrantes tomou um rumo diferente na vida, eu saí p estudar e era evangélico, outro pq", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1913", "23:08:18", "00:03:15", "23:11:33", "../musicas/bandas_nacionais/limite_extenso/04_-_nada_ficou_no_lugar.mp3", "04 - Nada Ficou No Lugar", "Limite Extenso", "16", "189.93.61.191", "2009-02-28 15:08:48", "1", "Sergio (Baterista do Limite Extenso): OK Rui... mandei alhumas musicas da nossa ex banda! Tem a minha autorização para por no ar sem problema nenhum! ... Cada um dos integrantes tomou um rumo diferente na vida, eu saí p estudar e era evangélico, outro pq", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1914", "16:55:14", "00:05:07", "17:00:21", "../musicas/bandas_nacionais/limite_extenso/05_-_a_cancao.mp3", "05 - A Cancao", "Limite Extenso", "16", "189.87.71.197", "2009-02-13 11:34:40", "1", "Sergio (Baterista do Limite Extenso): OK Rui... mandei alhumas musicas da nossa ex banda! Tem a minha autorização para por no ar sem problema nenhum! ... Cada um dos integrantes tomou um rumo diferente na vida, eu saí p estudar e era evangélico, outro pq", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1925", "19:03:39", "00:03:28", "19:07:07", "../musicas/bandas_nacionais/moptop/adeus.mp3", "Adeus", "Moptop", "22", "189.87.71.197", "2009-02-17 09:12:08", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1926", "19:24:38", "00:02:37", "19:27:15", "../musicas/bandas_nacionais/moptop/hoje_sei.mp3", "Hoje Sei", "Moptop", "22", "127.0.0.1", "2009-03-07 19:24:27", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1935", "08:37:19", "00:03:45", "08:41:04", "../musicas/bandas_nacionais/fresno/quebre_as_correntes.mp3", "Quebre As Correntes", "Fresno", "13", "200.249.114.67", "2009-01-31 11:07:56", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1936", "22:25:51", "00:02:31", "22:28:22", "../musicas/bandas_nacionais/ramirez/girl.mp3", "Girl", "Ramirez", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1937", "12:11:28", "00:02:44", "12:14:12", "../musicas/bandas_nacionais/ramirez/matriz.mp3", "Matriz", "Ramirez", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1938", "08:49:36", "00:02:22", "08:51:58", "../musicas/bandas_nacionais/ramirez/me_diz.mp3", "Me Diz", "Ramirez", "13", "189.87.71.197", "2009-02-16 09:11:40", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1939", "10:30:53", "00:03:39", "10:34:32", "../musicas/bandas_nacionais/ramirez/menininha.mp3", "Menininha", "Ramirez", "14", "201.45.104.55", "2009-01-27 11:02:11", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1940", "12:15:44", "00:02:16", "12:18:00", "../musicas/bandas_nacionais/ramirez/nem_nao.mp3", "Nem Nao", "Ramirez", "18", "189.0.235.5", "2009-02-18 17:49:32", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1941", "12:32:45", "00:03:06", "12:35:51", "../musicas/bandas_nacionais/skore/montauk.mp3", "Montauk", "Skore", "15", "189.97.15.138", "2009-02-20 09:26:06", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1942", "17:22:28", "00:04:47", "17:27:15", "../musicas/bandas_nacionais/skore/trilogia.mp3", "Trilogia", "Skore", "17", "201.45.104.55", "2009-02-03 08:36:06", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1943", "21:20:49", "00:03:53", "21:24:42", "../musicas/bandas_nacionais/r._sigma/minha_vez.mp3", "Minha Vez", "R. Sigma", "15", "189.87.71.197", "2009-02-14 10:34:43", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1948", "10:49:30", "00:03:47", "10:53:17", "../musicas/bandas_nacionais/astronautas/o_conto.mp3", "O Conto", "Astronautas", "15", "201.45.104.55", "2009-03-03 15:13:55", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1949", "11:25:26", "00:03:17", "11:28:43", "../musicas/bandas_nacionais/b5/so_mais_uma_vez.mp3", "So Mais Uma Vez", "B5", "18", "189.0.228.207", "2009-02-21 14:09:41", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1950", "12:22:40", "00:03:43", "12:26:23", "../musicas/bandas_internacionais/jack_johnson/hope.mp3", "Hope", "Jack Johnson", "18", "189.87.71.197", "2009-02-14 11:26:53", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1951", "19:11:41", "00:03:32", "19:15:13", "../musicas/bandas_nacionais/lipstick/cada_segundo_que_eu_tinha.mp3", "Cada Segundo Que Eu Tinha", "Lipstick", "23", "127.0.0.1", "2009-03-07 19:12:20", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1952", "15:59:02", "00:03:38", "16:02:40", "../musicas/bandas_nacionais/ludov/a_obra.mp3", "A Obra", "Ludov", "16", "189.93.61.191", "2009-02-28 15:09:54", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1953", "20:39:21", "00:03:39", "20:43:00", "../musicas/bandas_nacionais/pedro_mariano/procurando_por_mim.mp3", "Procurando Por Mim", "Pedro Mariano", "21", "201.45.104.55", "2009-02-09 09:05:49", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1954", "16:31:37", "00:04:17", "16:35:54", "../musicas/bandas_nacionais/rockassetes/as_flechas.mp3", "As Flechas", "Rockassetes", "25", "201.45.104.55", "2009-03-03 15:19:25", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1955", "25:13:07", "00:03:37", "25:16:44", "../musicas/bandas_nacionais/rockassetes/desinteresse.mp3", "Desinteresse", "Rockassetes", "27", "189.0.235.5", "2009-02-18 17:57:44", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2143", "25:47:52", "00:02:57", "25:50:49", "../musicas/bandas_nacionais/rockassetes/os_discos_que_voce_falou.mp3", "Os Discos Que Voce Falou", "Rockassetes", "1", "201.45.104.55", "2009-02-03 08:49:30", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1958", "22:15:01", "00:03:32", "22:18:33", "../musicas/bandas_nacionais/saibe/posso_ir_alem.mp3", "Posso Ir Alem", "Saibe", "20", "189.93.61.191", "2009-02-28 15:06:04", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1959", "08:23:57", "00:05:30", "08:29:27", "../musicas/bandas_nacionais/teoria_do_caos/algum_lugar.mp3", "Algum Lugar", "Teoria Do Caos", "10", "189.97.15.138", "2009-02-20 09:29:25", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1960", "24:56:28", "00:03:09", "24:59:37", "../musicas/bandas_nacionais/teoria_do_caos/como_um_perdedor.mp3", "Como Um Perdedor", "Teoria Do Caos", "16", "201.45.104.55", "2009-02-19 10:35:31", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1961", "17:34:14", "00:03:46", "17:38:00", "../musicas/bandas_nacionais/udora/a_falta_que_me_faz.mp3", "A Falta Que Me Faz", "Udora", "15", "201.45.104.55", "2009-03-03 15:39:09", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1962", "11:57:06", "00:03:32", "12:00:38", "../musicas/bandas_nacionais/udora/goodbye_alo.mp3", "Goodbye Alo", "Udora", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1963", "11:42:01", "00:03:02", "11:45:03", "../musicas/bandas_nacionais/udora/mil_pedacos.mp3", "Mil Pedacos", "Udora", "12", "201.45.104.55", "2009-01-05 12:24:20", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1964", "15:42:00", "00:03:34", "15:45:34", "../musicas/bandas_nacionais/udora/nao_me_fere.mp3", "Nao Me Fere", "Udora", "9", "201.45.104.55", "2009-01-27 13:02:57", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1965", "23:50:13", "00:03:24", "23:53:37", "../musicas/bandas_nacionais/udora/por_do_sol.mp3", "Por Do Sol", "Udora", "13", "201.45.104.55", "2009-02-05 13:29:02", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1966", "17:38:01", "00:04:15", "17:42:16", "../musicas/bandas_nacionais/udora/velho_lugar.mp3", "Velho Lugar", "Udora", "0", NULL, "0000-00-00 00:00:00", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1967", "25:16:45", "00:03:09", "25:19:54", "../musicas/bandas_nacionais/vanguart/cachaca.mp3", "Cachaca", "Vanguart", "16", "201.45.104.55", "2009-02-20 10:48:43", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1968", "18:48:19", "00:03:54", "18:52:13", "../musicas/bandas_nacionais/vanguart/semaforo.mp3", "Semaforo", "Vanguart", "21", "189.93.61.191", "2009-02-28 16:21:31", "1", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1997", "19:50:25", "00:00:27", "19:50:52", "../musicas/publicidade/vinhetas_tuatec/e_sucesso.mp3", "E Sucesso", "Vinhetas Tuatec", "30", "127.0.0.1", "2009-03-07 19:49:27", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1983", "20:45:55", "00:03:29", "20:49:24", "../musicas/bandas_internacionais/the_corrs/breathless.mp3", "Breathless", "The Corrs", "13", "201.45.104.55", "2009-02-20 11:34:45", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1987", "24:27:40", "00:02:14", "24:29:54", "../musicas/bandas_internacionais/the_offspring/staring_at_the_sun.mp3", "Staring At The Sun", "The Offspring", "9", "201.45.104.55", "2009-02-20 10:34:54", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2001", "13:08:58", "00:00:27", "13:09:25", "../musicas/publicidade/vinhetas_tuatec/a_radio_que_vai_pegar_voce.mp3", "A Radio Que Vai Pegar Voce", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("1999", "16:13:47", "00:00:36", "16:14:23", "../musicas/publicidade/vinhetas_tuatec/o_tempo_todo_nesta_estacao.mp3", "O Tempo Todo Nesta Estacao", "Vinhetas Tuatec", "49", "127.0.0.1", "2009-03-07 20:01:18", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2000", "25:43:33", "00:00:08", "25:43:41", "../musicas/publicidade/vinhetas_tuatec/radio_tuatec.mp3", "Radio Tuatec", "Vinhetas Tuatec", "38", "189.93.61.191", "2009-02-28 15:09:48", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2002", "24:38:17", "00:00:25", "24:38:42", "../musicas/publicidade/vinhetas_tuatec/a_sua_musica_toca_aqui_1.mp3", "A Sua Musica Toca Aqui 1", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2003", "14:54:20", "00:00:15", "14:54:35", "../musicas/publicidade/vinhetas_tuatec/a_sua_musica_toca_aqui_2.mp3", "A Sua Musica Toca Aqui 2", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2004", "19:59:42", "00:00:17", "19:59:59", "../musicas/publicidade/vinhetas_tuatec/a_sua_musica_toca_aqui_3.mp3", "A Sua Musica Toca Aqui 3", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2005", "14:34:44", "00:00:07", "14:34:51", "../musicas/publicidade/vinhetas_tuatec/aqui_toca_mais_musicas.mp3", "Aqui Toca Mais Musicas", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2006", "13:34:22", "00:00:44", "13:35:06", "../musicas/publicidade/vinhetas_tuatec/aumente_o_volume.mp3", "Aumente O Volume", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2007", "26:01:05", "00:00:27", "26:01:32", "../musicas/publicidade/vinhetas_tuatec/e_sucesso.mp3", "E Sucesso", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2008", "16:52:01", "00:00:12", "16:52:13", "../musicas/publicidade/vinhetas_tuatec/nao_mude_nao_desligue_-_essa_e_a_melhor.mp3", "Nao Mude Nao Desligue - Essa E A Melhor", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2009", "21:43:14", "00:00:36", "21:43:50", "../musicas/publicidade/vinhetas_tuatec/o_tempo_todo_nesta_estacao.mp3", "O Tempo Todo Nesta Estacao", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2010", "15:41:51", "00:00:08", "15:41:59", "../musicas/publicidade/vinhetas_tuatec/radio_tuatec.mp3", "Radio Tuatec", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2011", "12:18:01", "00:00:27", "12:18:28", "../musicas/publicidade/vinhetas_tuatec/a_radio_que_vai_pegar_voce.mp3", "A Radio Que Vai Pegar Voce", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2012", "20:16:27", "00:00:25", "20:16:52", "../musicas/publicidade/vinhetas_tuatec/a_sua_musica_toca_aqui_1.mp3", "A Sua Musica Toca Aqui 1", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2013", "18:07:26", "00:00:15", "18:07:41", "../musicas/publicidade/vinhetas_tuatec/a_sua_musica_toca_aqui_2.mp3", "A Sua Musica Toca Aqui 2", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2014", "12:32:09", "00:00:17", "12:32:26", "../musicas/publicidade/vinhetas_tuatec/a_sua_musica_toca_aqui_3.mp3", "A Sua Musica Toca Aqui 3", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2015", "17:22:20", "00:00:07", "17:22:27", "../musicas/publicidade/vinhetas_tuatec/aqui_toca_mais_musicas.mp3", "Aqui Toca Mais Musicas", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2016", "09:39:02", "00:00:44", "09:39:46", "../musicas/publicidade/vinhetas_tuatec/aumente_o_volume.mp3", "Aumente O Volume", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2017", "20:00:32", "00:00:27", "20:00:59", "../musicas/publicidade/vinhetas_tuatec/e_sucesso.mp3", "E Sucesso", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2018", "21:01:39", "00:00:12", "21:01:51", "../musicas/publicidade/vinhetas_tuatec/nao_mude_nao_desligue_-_essa_e_a_melhor.mp3", "Nao Mude Nao Desligue - Essa E A Melhor", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2019", "17:10:46", "00:00:36", "17:11:22", "../musicas/publicidade/vinhetas_tuatec/o_tempo_todo_nesta_estacao.mp3", "O Tempo Todo Nesta Estacao", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2020", "25:03:44", "00:00:08", "25:03:52", "../musicas/publicidade/vinhetas_tuatec/radio_tuatec.mp3", "Radio Tuatec", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2021", "23:04:31", "00:00:27", "23:04:58", "../musicas/publicidade/vinhetas_tuatec/a_radio_que_vai_pegar_voce.mp3", "A Radio Que Vai Pegar Voce", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2022", "09:10:46", "00:00:25", "09:11:11", "../musicas/publicidade/vinhetas_tuatec/a_sua_musica_toca_aqui_1.mp3", "A Sua Musica Toca Aqui 1", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2023", "17:27:45", "00:00:15", "17:28:00", "../musicas/publicidade/vinhetas_tuatec/a_sua_musica_toca_aqui_2.mp3", "A Sua Musica Toca Aqui 2", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2024", "24:30:11", "00:00:17", "24:30:28", "../musicas/publicidade/vinhetas_tuatec/a_sua_musica_toca_aqui_3.mp3", "A Sua Musica Toca Aqui 3", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2025", "15:29:02", "00:00:07", "15:29:09", "../musicas/publicidade/vinhetas_tuatec/aqui_toca_mais_musicas.mp3", "Aqui Toca Mais Musicas", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2026", "11:00:52", "00:00:44", "11:01:36", "../musicas/publicidade/vinhetas_tuatec/aumente_o_volume.mp3", "Aumente O Volume", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2027", "25:38:41", "00:00:27", "25:39:08", "../musicas/publicidade/vinhetas_tuatec/e_sucesso.mp3", "E Sucesso", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2028", "17:33:24", "00:00:12", "17:33:36", "../musicas/publicidade/vinhetas_tuatec/nao_mude_nao_desligue_-_essa_e_a_melhor.mp3", "Nao Mude Nao Desligue - Essa E A Melhor", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2029", "20:04:20", "00:00:36", "20:04:56", "../musicas/publicidade/vinhetas_tuatec/o_tempo_todo_nesta_estacao.mp3", "O Tempo Todo Nesta Estacao", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2030", "23:04:22", "00:00:08", "23:04:30", "../musicas/publicidade/vinhetas_tuatec/radio_tuatec.mp3", "Radio Tuatec", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2031", "08:03:46", "00:00:27", "08:04:13", "../musicas/publicidade/vinhetas_tuatec/a_radio_que_vai_pegar_voce.mp3", "A Radio Que Vai Pegar Voce", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2032", "14:39:41", "00:00:25", "14:40:06", "../musicas/publicidade/vinhetas_tuatec/a_sua_musica_toca_aqui_1.mp3", "A Sua Musica Toca Aqui 1", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2033", "25:53:47", "00:00:15", "25:54:02", "../musicas/publicidade/vinhetas_tuatec/a_sua_musica_toca_aqui_2.mp3", "A Sua Musica Toca Aqui 2", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2034", "12:32:27", "00:00:17", "12:32:44", "../musicas/publicidade/vinhetas_tuatec/a_sua_musica_toca_aqui_3.mp3", "A Sua Musica Toca Aqui 3", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2035", "12:14:59", "00:00:07", "12:15:06", "../musicas/publicidade/vinhetas_tuatec/aqui_toca_mais_musicas.mp3", "Aqui Toca Mais Musicas", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2036", "25:36:16", "00:00:44", "25:37:00", "../musicas/publicidade/vinhetas_tuatec/aumente_o_volume.mp3", "Aumente O Volume", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2037", "23:49:45", "00:00:27", "23:50:12", "../musicas/publicidade/vinhetas_tuatec/e_sucesso.mp3", "E Sucesso", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2038", "11:00:34", "00:00:12", "11:00:46", "../musicas/publicidade/vinhetas_tuatec/nao_mude_nao_desligue_-_essa_e_a_melhor.mp3", "Nao Mude Nao Desligue - Essa E A Melhor", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2039", "17:44:53", "00:00:36", "17:45:29", "../musicas/publicidade/vinhetas_tuatec/o_tempo_todo_nesta_estacao.mp3", "O Tempo Todo Nesta Estacao", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2040", "12:14:50", "00:00:08", "12:14:58", "../musicas/publicidade/vinhetas_tuatec/radio_tuatec.mp3", "Radio Tuatec", "Vinhetas Tuatec", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2041", "21:41:57", "00:01:16", "21:43:13", "../musicas/bandas_internacionais/coldplay/death_will_never_conquer.mp3", "Death Will Never Conquer", "Coldplay", "9", "201.45.104.55", "2009-03-03 15:29:39", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2042", "24:34:50", "00:03:26", "24:38:16", "../musicas/bandas_internacionais/liset_alea/not_in_love.mp3", "Not In Love", "Liset Alea", "7", "189.87.64.9", "2009-01-25 20:46:24", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2043", "10:22:44", "00:03:52", "10:26:36", "../musicas/bandas_internacionais/melanie_c/understand_hague.mp3", "Understand Hague", "Melanie C", "8", "200.249.114.67", "2009-02-17 20:10:32", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2044", "18:52:14", "00:03:23", "18:55:37", "../musicas/bandas_internacionais/natalie_imbruglia/wrong_impression.mp3", "Wrong Impression", "Natalie Imbruglia", "5", "200.249.114.67", "2008-12-30 20:40:37", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2045", "23:42:53", "00:03:04", "23:45:57", "../musicas/bandas_internacionais/strokes/someday.mp3", "Someday", "Strokes", "13", "201.45.104.55", "2009-02-27 10:44:34", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2046", "17:54:46", "00:03:28", "17:58:14", "../musicas/bandas_internacionais/the_calling/wherever_you_will_go.mp3", "Wherever You Will Go", "The Calling", "15", "189.93.61.191", "2009-02-28 15:09:47", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2047", "17:42:49", "00:02:03", "17:44:52", "../musicas/bandas_nacionais/camila_maia/eu_nao_sou_uma_flor.mp3", "Eu Nao Sou Uma Flor", "Camila Maia", "12", "189.0.235.5", "2009-02-18 17:51:56", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2048", "10:57:08", "00:03:25", "11:00:33", "../musicas/bandas_nacionais/canja_rave/aqui_agora.mp3", "Aqui Agora", "Canja Rave", "4", "201.45.104.55", "2009-02-05 13:41:22", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2049", "19:37:15", "00:03:40", "19:40:55", "../musicas/bandas_nacionais/canja_rave/filme_do_elvis_128.mp3", "Filme Do Elvis 128", "Canja Rave", "11", "127.0.0.1", "2009-03-07 19:36:08", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2050", "08:04:14", "00:01:16", "08:05:30", "../musicas/bandas_nacionais/canja_rave/lembro_tudo.mp3", "Lembro Tudo", "Canja Rave", "6", "201.45.104.55", "2009-02-03 08:38:46", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2051", "10:05:40", "00:03:31", "10:09:11", "../musicas/bandas_nacionais/codigo_b/mais_uma_vez.mp3", "Mais Uma Vez", "Codigo B", "8", "189.25.122.51", "2009-01-23 20:56:05", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2052", "15:29:10", "00:03:58", "15:33:08", "../musicas/bandas_nacionais/eddie/pode_me_chamar.mp3", "Pode Me Chamar", "Eddie", "9", "189.0.235.5", "2009-02-18 18:52:29", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2053", "22:41:03", "00:03:32", "22:44:35", "../musicas/bandas_nacionais/enverso/flores_velhas.mp3", "Flores Velhas", "Enverso", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2054", "23:04:59", "00:03:18", "23:08:17", "../musicas/bandas_nacionais/enverso/gigante.mp3", "Gigante", "Enverso", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2055", "23:35:40", "00:03:06", "23:38:46", "../musicas/bandas_nacionais/enverso/lucida_casual.mp3", "Lucida Casual", "Enverso", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2056", "13:17:00", "00:03:45", "13:20:45", "../musicas/bandas_nacionais/enverso/meu_lugar.mp3", "Meu Lugar", "Enverso", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2057", "20:26:05", "00:08:17", "20:34:22", "../musicas/bandas_nacionais/enverso/piano.mp3", "Piano", "Enverso", "11", "201.45.104.55", "2008-12-22 08:49:53", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2058", "14:50:28", "00:03:51", "14:54:19", "../musicas/bandas_nacionais/enverso/quer_saber.mp3", "Quer Saber", "Enverso", "5", "189.93.61.191", "2009-02-28 14:58:23", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2059", "09:20:27", "00:03:22", "09:23:49", "../musicas/bandas_nacionais/enverso/rotulo.mp3", "Rotulo", "Enverso", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2060", "18:07:42", "00:03:49", "18:11:31", "../musicas/bandas_nacionais/enverso/saida.mp3", "Saida", "Enverso", "3", "201.45.104.55", "2009-02-03 11:36:11", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2061", "20:21:27", "00:04:37", "20:26:04", "../musicas/bandas_nacionais/enverso/temporal.mp3", "Temporal", "Enverso", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2062", "24:10:15", "00:03:25", "24:13:40", "../musicas/bandas_nacionais/enverso/tristes_versos.mp3", "Tristes Versos", "Enverso", "4", "189.87.71.197", "2009-02-14 11:39:38", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2063", "11:01:37", "00:03:32", "11:05:09", "../musicas/bandas_nacionais/lipstick/cada_segundo_que_eu_tinha.mp3", "Cada Segundo Que Eu Tinha", "Lipstick", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2064", "19:30:51", "00:03:14", "19:34:05", "../musicas/bandas_nacionais/lipstick/descontrolada.mp3", "Descontrolada", "Lipstick", "10", "127.0.0.1", "2009-03-07 19:29:40", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2065", "12:59:06", "00:02:57", "13:02:03", "../musicas/bandas_nacionais/rock_de_minissaia/nao_faz_sentido.mp3", "Nao Faz Sentido", "Rock De Minissaia", "11", "201.45.104.55", "2009-02-19 10:39:56", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2066", "24:16:36", "00:02:58", "24:19:34", "../musicas/bandas_nacionais/rock_de_minissaia/nao_faz_sentido2.mp3", "Nao Faz Sentido2", "Rock De Minissaia", "5", "201.45.104.55", "2009-01-19 12:19:53", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2150", "10:19:19", "00:03:24", "10:22:43", "../musicas/bandas_nacionais/denise_selles/eu_errei.mp3", "Eu Errei", "Denise Selles", "2", "201.45.104.55", "2009-03-03 14:56:36", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2151", "09:28:17", "00:03:19", "09:31:36", "../musicas/bandas_nacionais/denise_selles/voar.mp3", "Voar", "Denise Selles", "3", "189.87.71.197", "2009-02-14 11:07:04", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2152", "18:20:36", "00:04:00", "18:24:36", "../musicas/bandas_nacionais/spritz/amanha.mp3", "Amanha", "Spritz", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2072", "10:40:41", "00:02:23", "10:43:04", "../musicas/bandas_nacionais/rockassetes/sne.mp3", "Sne", "Rockassetes", "7", "201.45.104.55", "2009-01-05 12:06:09", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2074", "22:49:40", "00:03:32", "22:53:12", "../musicas/bandas_nacionais/saibe/posso_ir_alem.mp3", "Posso Ir Alem", "Saibe", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2075", "23:01:08", "00:03:13", "23:04:21", "../musicas/bandas_nacionais/saibe/sem_vc.mp3", "Sem Vc", "Saibe", "11", "200.249.114.67", "2009-02-17 20:20:39", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2076", "08:34:06", "00:03:06", "08:37:12", "../musicas/bandas_nacionais/spritz/musica_nova_de_hoje.mp3", "Musica Nova De Hoje", "Spritz", "8", "201.45.104.55", "2009-03-03 15:33:26", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2080", "23:11:34", "00:03:41", "23:15:15", "../musicas/bandas_nacionais/volver/cancao_perdida.mp3", "Cancao Perdida", "Volver", "12", "189.93.61.191", "2009-02-28 15:10:44", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2157", "26:08:08", "00:04:02", "26:12:10", "../musicas/bandas_internacionais/christina_aguilera/dirrty.mp3", "Dirrty", "Christina Aguilera", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2084", "13:43:46", "00:02:57", "13:46:43", "../musicas/bandas_nacionais/volver/quero_que_voce_dessista.mp3", "Quero Que Voce Dessista", "Volver", "10", "201.45.104.55", "2009-02-03 13:15:49", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2085", "23:45:58", "00:03:40", "23:49:38", "../musicas/bandas_nacionais/volver/tao_perto_tao_certo.mp3", "Tao Perto Tao Certo", "Volver", "11", "189.87.71.197", "2009-02-14 22:02:26", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2087", "22:10:42", "00:03:46", "22:14:28", "../musicas/bandas_internacionais/avril_lavigne/i_am_with_you.mp3", "I Am With You", "Avril Lavigne", "1", "201.45.104.55", "2009-01-19 12:25:55", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2088", "15:20:28", "00:03:55", "15:24:23", "../musicas/bandas_internacionais/avril_lavigne/losing_my_grip.mp3", "Losing My Grip", "Avril Lavigne", "2", "200.249.114.67", "2009-02-09 19:43:33", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2089", "15:33:09", "00:05:08", "15:38:17", "../musicas/bandas_internacionais/coldplay/clocks.mp3", "Clocks", "Coldplay", "5", "201.45.104.55", "2009-02-20 11:13:51", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2154", "21:38:17", "00:03:39", "21:41:56", "../musicas/bandas_internacionais/vamoz/beside.mp3", "Beside", "Vamoz", "3", "201.45.104.55", "2009-02-20 10:17:44", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2091", "10:45:40", "00:03:49", "10:49:29", "../musicas/bandas_internacionais/coldplay/in_my_place.mp3", "In My Place", "Coldplay", "3", "200.249.114.67", "2009-02-09 19:52:16", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2092", "15:45:35", "00:04:01", "15:49:36", "../musicas/bandas_internacionais/evanescence/bring_me_to_life.mp3", "Bring Me To Life", "Evanescence", "7", "201.45.104.55", "2009-03-03 14:49:29", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2093", "09:46:46", "00:05:22", "09:52:08", "../musicas/bandas_internacionais/mana/labios_compartidos.mp3", "Labios Compartidos", "Mana", "4", "189.93.61.191", "2009-02-28 15:09:57", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2094", "20:11:14", "00:05:12", "20:16:26", "../musicas/bandas_internacionais/mana/manda_una_senal.mp3", "Manda Una Senal", "Mana", "6", "127.0.0.1", "2009-03-07 20:07:45", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2095", "09:02:59", "00:03:55", "09:06:54", "../musicas/bandas_internacionais/red_hot_chili_peppers/the_zephyr_song.mp3", "The Zephyr Song", "Red Hot Chili Peppers", "8", "201.45.104.55", "2009-03-03 14:44:03", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2096", "16:48:40", "00:03:20", "16:52:00", "../musicas/bandas_internacionais/sixpence_none_the_richer/kiss_me.mp3", "Kiss Me", "Sixpence None The Richer", "5", "189.0.228.207", "2009-02-21 14:13:07", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2097", "21:27:25", "00:04:25", "21:31:50", "../musicas/bandas_internacionais/survivor/the_moment_of_truth.mp3", "The Moment Of Truth", "Survivor", "4", "201.45.104.55", "2009-02-19 08:33:28", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2098", "25:23:23", "00:04:08", "25:27:31", "../musicas/bandas_nacionais/cidadao_quem/a_força_do_silencio.mp3", "A Força Do Silencio", "Cidadao Quem", "5", "201.45.104.55", "2009-02-20 10:29:40", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2099", "23:27:58", "00:03:36", "23:31:34", "../musicas/bandas_nacionais/drive/mais_um_dia_ruim.mp3", "Mais Um Dia Ruim", "Drive", "6", "200.249.114.67", "2009-02-27 21:52:59", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2100", "13:27:19", "00:03:29", "13:30:48", "../musicas/bandas_nacionais/drive/olhando_pra_vc.mp3", "Olhando Pra Vc", "Drive", "2", "189.87.64.9", "2009-01-25 21:09:38", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2101", "17:28:37", "00:02:52", "17:31:29", "../musicas/bandas_nacionais/impar/ela_(regravacao).mp3", "Ela (regravacao)", "Impar", "3", "201.45.104.55", "2009-01-27 09:42:01", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2102", "15:01:15", "00:02:31", "15:03:46", "../musicas/bandas_nacionais/impar/melhor_aqui_(remixada).mp3", "Melhor Aqui (remixada)", "Impar", "5", "200.249.114.67", "2009-02-09 20:39:20", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2103", "18:55:38", "00:03:14", "18:58:52", "../musicas/bandas_nacionais/stellabella/a_escolha.mp3", "A Escolha", "Stellabella", "5", "200.249.114.67", "2009-01-31 11:16:15", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2148", "14:07:01", "00:03:24", "14:10:25", "../musicas/bandas_nacionais/denise_selles/eu_errei.mp3", "Eu Errei", "Denise Selles", "1", "200.249.114.67", "2009-02-02 20:07:35", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2149", "19:47:25", "00:02:59", "19:50:24", "../musicas/bandas_nacionais/denise_selles/ando.mp3", "Ando", "Denise Selles", "3", "127.0.0.1", "2009-03-07 19:46:23", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2107", "23:15:59", "00:03:47", "23:19:46", "../musicas/bandas_nacionais/volver/a_sorte.mp3", "A Sorte", "Volver", "4", "201.45.104.55", "2009-01-27 10:03:50", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2158", "26:12:11", "00:04:04", "26:16:15", "../musicas/bandas_internacionais/christina_aguilera/hurt.mp3", "Hurt", "Christina Aguilera", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2159", "26:16:16", "00:05:08", "26:21:24", "../musicas/bandas_internacionais/coldplay/clocks.mp3", "Clocks", "Coldplay", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2160", "26:21:25", "00:01:16", "26:22:41", "../musicas/bandas_internacionais/coldplay/death_will_never_conquer.mp3", "Death Will Never Conquer", "Coldplay", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2120", "16:02:41", "00:03:35", "16:06:16", "../musicas/bandas_nacionais/bonsucesso_samba_clube/eu_te_encontrei.mp3", "Eu Te Encontrei", "Bonsucesso Samba Clube", "3", "201.45.104.55", "2009-02-20 11:30:14", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2119", "25:19:55", "00:03:27", "25:23:22", "../musicas/bandas_nacionais/andrea_amorim/refratario.mp3", "Refratario", "Andrea Amorim", "1", "201.45.104.55", "2009-01-27 09:55:39", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2118", "11:12:26", "00:03:58", "11:16:24", "../musicas/bandas_nacionais/andrea_amorim/milagre.mp3", "Milagre", "Andrea Amorim", "2", "189.87.71.197", "2009-02-14 10:13:15", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2117", "21:31:51", "00:03:40", "21:35:31", "../musicas/bandas_nacionais/andrea_amorim/eu_preciso.mp3", "Eu Preciso", "Andrea Amorim", "1", "189.0.235.5", "2009-02-18 18:47:27", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2153", "20:49:25", "00:03:06", "20:52:31", "../musicas/bandas_nacionais/spritz/musica_nova_de_hoje.mp3", "Musica Nova De Hoje", "Spritz", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2162", "26:27:38", "00:03:49", "26:31:27", "../musicas/bandas_internacionais/coldplay/in_my_place.mp3", "In My Place", "Coldplay", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2161", "26:22:42", "00:04:55", "26:27:37", "../musicas/bandas_internacionais/coldplay/fix_you.mp3", "Fix You", "Coldplay", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2167", "26:50:37", "00:04:32", "26:55:09", "../musicas/bandas_internacionais/coldplay/troubles.mp3", "Troubles", "Coldplay", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2166", "26:45:27", "00:05:09", "26:50:36", "../musicas/bandas_internacionais/coldplay/the_scientist.mp3", "The Scientist", "Coldplay", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2165", "26:41:01", "00:04:25", "26:45:26", "../musicas/bandas_internacionais/coldplay/the_hardest_part.mp3", "The Hardest Part", "Coldplay", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2164", "26:36:17", "00:04:43", "26:41:00", "../musicas/bandas_internacionais/coldplay/talk.mp3", "Talk", "Coldplay", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2163", "26:31:28", "00:04:48", "26:36:16", "../musicas/bandas_internacionais/coldplay/speed_of_sound.mp3", "Speed Of Sound", "Coldplay", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2147", "15:07:43", "00:02:59", "15:10:42", "../musicas/bandas_nacionais/denise_selles/ando.mp3", "Ando", "Denise Selles", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2136", "16:06:17", "00:04:00", "16:10:17", "../musicas/bandas_nacionais/telerama/arsenal.mp3", "Arsenal", "Telerama", "3", "189.0.235.5", "2009-02-18 17:34:38", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2137", "14:27:13", "00:03:10", "14:30:23", "../musicas/bandas_nacionais/telerama/cruz.mp3", "Cruz", "Telerama", "5", "201.45.104.55", "2009-03-03 14:30:53", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2138", "22:18:34", "00:03:18", "22:21:52", "../musicas/bandas_nacionais/telerama/querida_maquina.mp3", "Querida Maquina", "Telerama", "1", "189.0.235.5", "2009-02-18 17:31:10", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2139", "08:12:41", "00:03:10", "08:15:51", "../musicas/bandas_nacionais/telerama/sem_ter_amor.mp3", "Sem Ter Amor", "Telerama", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2155", "26:01:33", "00:02:59", "26:04:32", "../musicas/bandas_nacionais/the_new_folks/mangue_beatle.mp3", "Mangue Beatle", "The New Folks", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2156", "26:04:33", "00:03:34", "26:08:07", "../musicas/bandas_nacionais/the_new_folks/pensamento_ao_sul.mp3", "Pensamento Ao Sul", "The New Folks", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");
INSERT INTO tbl_radioprogramacao VALUES("2168", "26:55:10", "00:04:29", "26:59:39", "../musicas/bandas_internacionais/coldplay/yellow.mp3", "Yellow", "Coldplay", "0", NULL, "0000-00-00 00:00:00", "0", "", "1", "1", "1", "1", "1", "1", "1");


#
# Table structure for table 'tbl_recados'
#

DROP TABLE IF EXISTS tbl_recados;
CREATE TABLE IF NOT EXISTS tbl_recados (
  Numero mediumint(7) unsigned NOT NULL auto_increment,
  De varchar(100) NOT NULL DEFAULT '' ,
  Para varchar(100) NOT NULL DEFAULT '' ,
  Quando varchar(10) NOT NULL DEFAULT '' ,
  Mensagem longtext NOT NULL DEFAULT '' ,
  PRIMARY KEY (Numero)
);



#
# Dumping data for table 'tbl_recados'
#



#
# Table structure for table 'tbl_robotuatec'
#

DROP TABLE IF EXISTS tbl_robotuatec;
CREATE TABLE IF NOT EXISTS tbl_robotuatec (
  ID tinyint(3) unsigned NOT NULL DEFAULT '0' ,
  SeAutoBackupBD enum('1','0') NOT NULL DEFAULT '1' ,
  SeAutoRandomizarRadio enum('0','1') NOT NULL DEFAULT '0' ,
  FrequenciaDeBackups enum('1','7','10','15','30') NOT NULL DEFAULT '1' ,
  FrequenciaDeRandomizacao enum('1','7','10','15','30') NOT NULL DEFAULT '1' ,
  DestinoDoBackup varchar(100) NOT NULL DEFAULT 'sac@tuatec.com' ,
  UltimoBackup datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  UltimoRandomizacao datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  ResultadoDoAutoBackup longtext ,
  ResultadoDaRandomizacao longtext ,
  PRIMARY KEY (ID)
);



#
# Dumping data for table 'tbl_robotuatec'
#


#
# Table structure for table 'tbl_servicos'
#

DROP TABLE IF EXISTS tbl_servicos;
CREATE TABLE IF NOT EXISTS tbl_servicos (
  ID mediumint(7) unsigned NOT NULL auto_increment,
  Nome varchar(100) NOT NULL DEFAULT '' ,
  Descricao longtext ,
  Preco varchar(255) ,
  Link varchar(255) ,
  Disponivel enum('Sim','Não','Extinto') NOT NULL DEFAULT 'Não' ,
  PRIMARY KEY (ID)
);



#
# Dumping data for table 'tbl_servicos'
#


#
# Table structure for table 'tbl_telemarcketing'
#

DROP TABLE IF EXISTS tbl_telemarcketing;
CREATE TABLE IF NOT EXISTS tbl_telemarcketing (
  ID bigint(7) unsigned NOT NULL auto_increment,
  Empresa varchar(100) NOT NULL DEFAULT '' ,
  Telefone varchar(50) NOT NULL DEFAULT '' ,
  Endereco varchar(255) ,
  Cidade varchar(75) ,
  Estado char(2) ,
  InicioDaPropaganda datetime ,
  FimDaPropaganda datetime ,
  SegundosAnunciados bigint(7) unsigned DEFAULT '0' ,
  Observacoes longtext ,
  PRIMARY KEY (ID)
);



#
# Dumping data for table 'tbl_telemarcketing'
#


#
# Table structure for table 'tbl_usuarios'
#

DROP TABLE IF EXISTS tbl_usuarios;
CREATE TABLE IF NOT EXISTS tbl_usuarios (
  EMail varchar(75) NOT NULL DEFAULT '' ,
  Senha varchar(30) NOT NULL DEFAULT '' ,
  SeAceito enum('1','0') NOT NULL DEFAULT '1' ,
  SeConectado enum('1','0') NOT NULL DEFAULT '0' ,
  UltimoAcesso varchar(10) NOT NULL DEFAULT '' ,
  Ultimo_PC varchar(25) NOT NULL DEFAULT '' ,
  NomeCompleto varchar(100) NOT NULL DEFAULT '' ,
  Sexo enum('Masculino','Feminino') NOT NULL DEFAULT 'Masculino' ,
  Avata longtext ,
  Cargo varchar(100) ,
  CargoAceitoPor varchar(75) ,
  Nascimento varchar(10) NOT NULL DEFAULT '' ,
  Endereco varchar(255) NOT NULL DEFAULT '' ,
  Bairro varchar(40) NOT NULL DEFAULT '' ,
  Cidade varchar(40) NOT NULL DEFAULT '' ,
  Estado char(2) NOT NULL DEFAULT '' ,
  CEP varchar(10) NOT NULL DEFAULT '' ,
  NumerosParaContato longtext NOT NULL DEFAULT '' ,
  PedeNoticias enum('1','0') NOT NULL DEFAULT '1' ,
  SeLeiloaDirany enum('-2','-1','0','1') DEFAULT '0' ,
  Aviso longtext ,
  SeAvisoLido enum('0','1') NOT NULL DEFAULT '0' ,
  PRIMARY KEY (EMail)
);



#
# Dumping data for table 'tbl_usuarios'
#


#
# Table structure for table 'tbl_utilizacoes'
#

DROP TABLE IF EXISTS tbl_utilizacoes;
CREATE TABLE IF NOT EXISTS tbl_utilizacoes (
  Registro varchar(50) NOT NULL DEFAULT '' ,
  Usuario varchar(100) ,
  Senha_Publicada varchar(30) ,
  Aviso longtext ,
  Empresa varchar(255) ,
  Responsavel varchar(255) ,
  ContatadoPor varchar(255) ,
  ClienteDe varchar(100) ,
  NumerosParaContato varchar(255) ,
  Endereco longtext ,
  EMail longtext ,
  Produto varchar(50) ,
  Versao varchar(10) ,
  Acordo varchar(30) ,
  Validade varchar(10) ,
  UltimoAcesso varchar(10) ,
  Observacoes longtext ,
  PRIMARY KEY (Registro)
);



#
# Dumping data for table 'tbl_utilizacoes'
#


#
# Table structure for table 'tlog_configuracoes'
#

DROP TABLE IF EXISTS tlog_configuracoes;
CREATE TABLE IF NOT EXISTS tlog_configuracoes (
  Dono varchar(100) NOT NULL DEFAULT '' ,
  SeEnviaAvisos enum('0','1') NOT NULL DEFAULT '1' ,
  MensagensVisiveis smallint(2) NOT NULL DEFAULT '10' ,
  SeExibeDadosPessoais enum('0','1') NOT NULL DEFAULT '1' ,
  PRIMARY KEY (Dono)
);



#
# Dumping data for table 'tlog_configuracoes'
#

INSERT INTO tlog_configuracoes VALUES("rui.gravata@tuatec.com", "1", "5", "1");
INSERT INTO tlog_configuracoes VALUES("willams_oliveira@hotmail.com", "1", "5", "1");
INSERT INTO tlog_configuracoes VALUES("joel.recife@gmail.com", "1", "5", "1");


#
# Table structure for table 'tlog_contatos'
#

DROP TABLE IF EXISTS tlog_contatos;
CREATE TABLE IF NOT EXISTS tlog_contatos (
  Dono varchar(100) NOT NULL DEFAULT '' ,
  EMail varchar(100) NOT NULL DEFAULT '' ,
  NomeCompleto varchar(100) NOT NULL DEFAULT '' ,
  Grupo varchar(100) NOT NULL DEFAULT '' ,
  SeRecebeAvisos enum('0','1') NOT NULL DEFAULT '1' ,
  PRIMARY KEY (Dono,EMail)
);



#
# Dumping data for table 'tlog_contatos'
#


#
# Table structure for table 'tlog_convites'
#

DROP TABLE IF EXISTS tlog_convites;
CREATE TABLE IF NOT EXISTS tlog_convites (
  Dono varchar(100) NOT NULL DEFAULT '' ,
  EMail varchar(100) NOT NULL DEFAULT '' ,
  Quando datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Mensagem longtext ,
  PRIMARY KEY (Dono,EMail,Quando)
);



#
# Dumping data for table 'tlog_convites'
#



#
# Table structure for table 'tlog_grupos'
#

DROP TABLE IF EXISTS tlog_grupos;
CREATE TABLE IF NOT EXISTS tlog_grupos (
  Dono varchar(100) NOT NULL DEFAULT '' ,
  Nome varchar(100) NOT NULL DEFAULT '' ,
  PRIMARY KEY (Dono,Nome)
);



#
# Dumping data for table 'tlog_grupos'
#


#
# Table structure for table 'tlog_mensagens'
#

DROP TABLE IF EXISTS tlog_mensagens;
CREATE TABLE IF NOT EXISTS tlog_mensagens (
  Dono varchar(100) NOT NULL DEFAULT '' ,
  Remetente varchar(100) NOT NULL DEFAULT '' ,
  Quando datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  Mensagem longtext NOT NULL DEFAULT '' ,
  SeLido enum('0','1') NOT NULL DEFAULT '0' ,
  PRIMARY KEY (Dono,Remetente,Quando)
);



#
# Dumping data for table 'tlog_mensagens'
#

