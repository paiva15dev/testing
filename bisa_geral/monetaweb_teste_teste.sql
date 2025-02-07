/*
SQLyog Ultimate
MySQL - 8.0.36 : Database - monetaweb_bisaweb_bisaweb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `abombole` */

CREATE TABLE `abombole` (
  `BOLE_Id` int NOT NULL AUTO_INCREMENT,
  `SIST_Sigla` char(3) NOT NULL DEFAULT '',
  `BANC_Codigo` varchar(4) DEFAULT '',
  `conta_boleto_id` int DEFAULT NULL,
  `BANC_CodigoBanco` char(3) DEFAULT '',
  `BOLE_Sequencial` varchar(25) DEFAULT NULL,
  `BOLE_Titulo` varchar(50) NOT NULL DEFAULT '',
  `BOLE_Leiaute` varchar(10) NOT NULL,
  `BOLE_TipoBoleto` varchar(10) DEFAULT NULL,
  `MODE_AnoCompetencia` int DEFAULT NULL,
  `BOLE_ChaveTabela` varchar(255) DEFAULT NULL,
  `BOLE_ChaveCampos` varchar(255) DEFAULT NULL,
  `BOLE_ChaveValores` varchar(255) DEFAULT NULL,
  `BOLE_ValorDocumento` decimal(10,2) DEFAULT NULL,
  `BOLE_Vencimento` date DEFAULT NULL,
  `BOLE_DataDoc` date DEFAULT NULL,
  `BOLE_NumDoc` varchar(20) DEFAULT NULL,
  `BOLE_Aceite` char(1) DEFAULT NULL,
  `BOLE_DataProc` date DEFAULT NULL,
  `BOLE_Qtd` char(1) DEFAULT NULL,
  `BOLE_Valor` decimal(10,2) DEFAULT NULL,
  `BOLE_Desconto` decimal(10,2) DEFAULT NULL,
  `BOLE_Deducao` decimal(10,2) DEFAULT NULL,
  `BOLE_Multa` decimal(10,2) DEFAULT NULL,
  `BOLE_Juros` decimal(10,2) DEFAULT NULL,
  `BOLE_Acrescimo` decimal(10,2) DEFAULT NULL,
  `BOLE_ValCobrado` decimal(10,2) DEFAULT NULL,
  `FILI_Sequencial` int DEFAULT NULL,
  `BOLE_MatriculaCedente` varchar(6) DEFAULT NULL,
  `BOLE_NomeCliente` varchar(250) DEFAULT NULL,
  `BOLE_EndeCliente` varchar(100) DEFAULT NULL,
  `BOLE_EndeNum` varchar(15) DEFAULT NULL,
  `BOLE_Bairro` varchar(50) DEFAULT NULL,
  `BOLE_CGC` varchar(20) DEFAULT NULL,
  `BOLE_CGCM` varchar(20) DEFAULT NULL,
  `BOLE_Cidade` varchar(50) DEFAULT NULL,
  `BOLE_UF` char(2) DEFAULT NULL,
  `BOLE_CEP` varchar(9) DEFAULT NULL,
  `BOLE_Email` varchar(50) DEFAULT NULL,
  `BOLE_InstrucaoBoleta` varchar(255) DEFAULT NULL,
  `BOLE_Lote` int DEFAULT NULL,
  `BOLE_Ocorrencias` varchar(20) DEFAULT NULL,
  `BOLE_Status` varchar(20) DEFAULT NULL,
  `CONT_Codigo` int DEFAULT NULL,
  `TAXA_Codigo` varchar(2) DEFAULT NULL,
  `TAXA_Descricao` varchar(40) DEFAULT NULL,
  `BOLE_Agencia` int DEFAULT NULL,
  `BOLE_DigAgencia` varchar(1) DEFAULT NULL,
  `BOLE_Conta` varchar(15) DEFAULT NULL,
  `BOLE_DigConta` varchar(1) DEFAULT NULL,
  `BOLE_NumCarteira` varchar(6) DEFAULT NULL,
  `BOLE_NumeroConvenio` varchar(20) DEFAULT NULL,
  `BOLE_LocalPagamento1` varchar(100) DEFAULT NULL,
  `BOLE_LocalPagamento2` varchar(100) DEFAULT NULL,
  `BISAUSUA_LastUpdate` datetime DEFAULT NULL,
  `BISAUSUA_Sequencial` char(3) DEFAULT NULL,
  `BOLE_CodigoBarras` varchar(100) DEFAULT NULL,
  `BOLE_LinhaDigitavel` varchar(100) DEFAULT NULL,
  `BOLE_AgenciaCedente` varchar(30) DEFAULT NULL,
  `BOLE_DescCarteira` varchar(10) DEFAULT NULL,
  `BOLE_EMAILCedente` varchar(50) DEFAULT NULL,
  `BOLE_NomeCedente` varchar(100) DEFAULT NULL,
  `BOLE_CNPJCPFCedente` varchar(20) DEFAULT NULL,
  `BOLE_CEPCedente` varchar(15) DEFAULT NULL,
  `BOLE_EspecieDoc` varchar(10) DEFAULT NULL,
  `BOLE_OutrosDadosSacado` varchar(100) DEFAULT NULL,
  `BOLE_UsoBanco` varchar(50) DEFAULT NULL,
  `BOLE_QtdUnid` int DEFAULT NULL,
  `BOLE_ValorUnid` decimal(10,2) DEFAULT NULL,
  `BANC_CodigoBancoComDigito` varchar(10) DEFAULT NULL,
  `CLIE_Codigo` int DEFAULT NULL,
  `CLIE_Id` int DEFAULT NULL,
  `BOLE_EndeCedente` varchar(255) DEFAULT NULL,
  `BOLE_CodigoAPI` varchar(50) DEFAULT NULL,
  `Venda_Id` varchar(11) DEFAULT NULL,
  `Parcela_Id` varchar(11) DEFAULT NULL,
  `Boleto_Link` varchar(100) DEFAULT NULL,
  `ENTR_Id` int DEFAULT NULL,
  `BOLE_grupomassa` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`BOLE_Id`,`SIST_Sigla`,`BOLE_Titulo`),
  KEY `fk_ABOMBOLE_FILIADO` (`FILI_Sequencial`),
  KEY `fk_ABOMBOLE_BANCO` (`BANC_Codigo`,`BANC_CodigoBanco`),
  KEY `fk_TipoContribuicao_ABOMBOLE` (`CONT_Codigo`),
  KEY `RIMP_IDX001` (`SIST_Sigla`),
  KEY `RIMP_IDX002` (`SIST_Sigla`,`BOLE_DataDoc`),
  KEY `RIMP_IDX003` (`SIST_Sigla`,`BANC_Codigo`,`BANC_CodigoBanco`,`BOLE_Titulo`,`BOLE_DataDoc`),
  KEY `RIMP_IDX004` (`SIST_Sigla`,`BANC_Codigo`,`BANC_CodigoBanco`,`BOLE_Titulo`,`BOLE_Vencimento`),
  KEY `RIMP_IDX005` (`SIST_Sigla`,`BOLE_Vencimento`)
) ENGINE=InnoDB AUTO_INCREMENT=8956 DEFAULT CHARSET=latin1;

/*Table structure for table `acbwauto` */

CREATE TABLE `acbwauto` (
  `BANC_Codigo` varchar(2) DEFAULT NULL,
  `MOVI_TipoDoc` varchar(2) DEFAULT NULL,
  `MOVI_NumDoc` varchar(15) DEFAULT NULL,
  `ITEM_Sequencial` int DEFAULT NULL,
  `AUTO_CodigoSupervisor` varchar(3) DEFAULT NULL,
  `AUTO_Justificativa` varchar(255) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  `MOVI_ReferenciaBanco` varchar(17) DEFAULT NULL,
  UNIQUE KEY `ACBWAUTO_PrimaryKey` (`BANC_Codigo`,`MOVI_TipoDoc`,`MOVI_NumDoc`,`ITEM_Sequencial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acbwbanc` */

CREATE TABLE `acbwbanc` (
  `BANC_Codigo` varchar(2) DEFAULT NULL,
  `BANC_Tipo` varchar(1) DEFAULT NULL,
  `BANC_CodBanco` varchar(3) DEFAULT NULL,
  `BANC_PLAN_Codigo` smallint DEFAULT NULL COMMENT 'VER',
  `BANC_CodAgencia` varchar(4) DEFAULT NULL,
  `BANC_DigitoAgencia` varchar(1) DEFAULT NULL,
  `BANC_NomeBanco` varchar(40) DEFAULT NULL,
  `BANC_NomeAgencia` varchar(40) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_Endereco` varchar(50) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_Bairro` varchar(20) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_Cidade` varchar(20) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_Estado` varchar(2) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_CEP` varchar(8) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_NumeroConta` varchar(10) DEFAULT NULL,
  `BANC_Anotacoes` varchar(255) DEFAULT NULL COMMENT 'ver',
  `BANC_Logomarca` longblob,
  `BANC_Email` varchar(50) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_HomePage` varchar(50) DEFAULT NULL COMMENT 'INCLUIR - BANCO',
  `BANC_LoginHomeBank` varchar(20) DEFAULT NULL COMMENT 'INCLUIR - BANCO',
  `BANC_SenhaHomeBank` varchar(20) DEFAULT NULL COMMENT 'INCLUIR - BANCO',
  `BANC_AnotacoesHomeBank` varchar(255) DEFAULT NULL COMMENT 'INCLUIR - BANCO',
  `BANC_SenhaAutoAtend` varchar(20) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_FoneBanco01` varchar(12) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_AnotFone01` varchar(20) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_FoneBanco02` varchar(12) DEFAULT NULL,
  `BANC_AnotFone02` varchar(20) DEFAULT NULL,
  `BANC_FoneBanco03` varchar(12) DEFAULT NULL,
  `BANC_AnotFone03` varchar(20) DEFAULT NULL,
  `BANC_FoneBanco04` varchar(12) DEFAULT NULL,
  `BANC_AnotFone04` varchar(20) DEFAULT NULL,
  `BANC_FoneBanco05` varchar(12) DEFAULT NULL,
  `BANC_AnotFone05` varchar(20) DEFAULT NULL,
  `BANC_FoneBanco06` varchar(12) DEFAULT NULL,
  `BANC_AnotFone06` varchar(20) DEFAULT NULL,
  `BANC_NomeGerente` varchar(50) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_Contato` varchar(50) DEFAULT NULL COMMENT 'VER',
  `BANC_SaldoInicial` decimal(19,4) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_LimiteCheque` decimal(19,4) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_MesAnoImplant` varchar(6) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_GerenteConta` varchar(50) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_Proj_Codigo` varchar(3) DEFAULT NULL,
  `BANC_NaoObrigaProjeto` bit(1) NOT NULL,
  `BANC_NumUltimoPG` varchar(15) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_NumUltimoDP` varchar(15) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_NumUltimoCH` varchar(15) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BANC_NumUltimoRC` varchar(15) DEFAULT NULL COMMENT 'INCLUIR - CONTA',
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  UNIQUE KEY `ACBWBANC_PrimaryKey` (`BANC_Codigo`),
  KEY `ACBWBANC_Nome` (`BANC_NomeBanco`,`BANC_NomeAgencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acbwbaus` */

CREATE TABLE `acbwbaus` (
  `BANC_Codigo` varchar(2) DEFAULT NULL,
  `USUA_Sequencial` varchar(3) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  UNIQUE KEY `ACBWBAUS_PrimaryKey` (`BANC_Codigo`,`USUA_Sequencial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acbwcanc` */

CREATE TABLE `acbwcanc` (
  `BANC_Codigo` varchar(2) DEFAULT NULL,
  `MOVI_TipoDoc` varchar(2) DEFAULT NULL,
  `MOVI_NumDoc` varchar(15) DEFAULT NULL,
  `MOVI_DataLancto` timestamp NULL DEFAULT NULL,
  `MOVI_Pendente` varchar(1) DEFAULT NULL,
  `MOVI_DataLibPend` timestamp NULL DEFAULT NULL,
  `MOVI_NomeCheque` varchar(50) DEFAULT NULL,
  `MOVI_Observacoes` varchar(200) DEFAULT NULL,
  `MOVI_CodAdiantamento` varchar(5) DEFAULT NULL,
  `MOVI_CopiaImpressa` varchar(1) DEFAULT NULL,
  `MOVI_Valor` decimal(19,4) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  `MOVI_ReferenciaBanco` varchar(17) DEFAULT NULL,
  UNIQUE KEY `ACBWCANC_PrimaryKey` (`BANC_Codigo`,`MOVI_TipoDoc`,`MOVI_NumDoc`),
  KEY `ACBWCANC_NumDoc` (`MOVI_NumDoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acbwclas` */

CREATE TABLE `acbwclas` (
  `BANC_Codigo` varchar(2) DEFAULT NULL,
  `MOVI_TipoDoc` varchar(2) DEFAULT NULL,
  `MOVI_NumDoc` varchar(15) DEFAULT NULL,
  `FORN_Codigo` varchar(10) DEFAULT NULL,
  `ENTR_NumTitulo` varchar(35) DEFAULT NULL,
  `ENTR_Parcela` varchar(2) DEFAULT NULL,
  `CLASS_PLAN_Codigo` smallint DEFAULT NULL,
  `CLAS_TipoLancto` varchar(1) DEFAULT NULL,
  `CLAS_Valor` decimal(19,4) DEFAULT NULL,
  `CCUS_Codigo` varchar(20) DEFAULT NULL,
  `HIST_Codigo` varchar(3) DEFAULT NULL,
  `CLAS_ComplHist` varchar(255) DEFAULT NULL,
  `BANC_CodigoTransf` varchar(2) DEFAULT NULL,
  `ITEM_Sequencial` int DEFAULT NULL,
  `CONT_Codigo` varchar(10) DEFAULT NULL,
  `TPCR_Codigo` varchar(10) DEFAULT NULL,
  `ENTR_Ano` smallint DEFAULT NULL,
  `ENTR_Mes` smallint DEFAULT NULL,
  `TABEBANC_Codigo` varchar(4) DEFAULT NULL,
  `ENTR_Vencimento` timestamp NULL DEFAULT NULL,
  `CLAS_Sequencial` int DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(4) DEFAULT NULL,
  `MOVI_ReferenciaBanco` varchar(17) DEFAULT NULL,
  UNIQUE KEY `ACBWCLAS_Sequencial` (`CLAS_Sequencial`),
  KEY `ACBWCLAS_BaixaReceb` (`FORN_Codigo`,`ENTR_NumTitulo`,`ENTR_Parcela`,`CONT_Codigo`,`TPCR_Codigo`,`ENTR_Ano`,`ENTR_Mes`,`TABEBANC_Codigo`),
  KEY `ACBWCLAS_NumDoc` (`BANC_Codigo`,`MOVI_TipoDoc`,`MOVI_NumDoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acbwclas_ccusto` */

CREATE TABLE `acbwclas_ccusto` (
  `CLAS_Sequencial` int DEFAULT NULL,
  `CCUS_Codigo` varchar(20) DEFAULT NULL,
  `CLAS_Ccusto_Valor` decimal(19,4) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  UNIQUE KEY `ACBWCLAS_CCUSTO_Seq` (`CLAS_Sequencial`,`CCUS_Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acbwclas_ctw` */

CREATE TABLE `acbwclas_ctw` (
  `CLAS_Sequencial` int DEFAULT NULL,
  `PLAN_Codigo` int DEFAULT NULL,
  `CLAS_Valor` decimal(19,4) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  UNIQUE KEY `ACBWCLAS_CTW_PrimaryKey` (`CLAS_Sequencial`,`PLAN_Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acbwctrl` */

CREATE TABLE `acbwctrl` (
  `CLAS_Sequencial` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acbwitem` */

CREATE TABLE `acbwitem` (
  `PROJ_Codigo` varchar(3) DEFAULT NULL,
  `ITEM_Codigo` varchar(5) DEFAULT NULL,
  `ITEM_Descricao` varchar(60) DEFAULT NULL,
  `ITEM_CodigoPai` int DEFAULT NULL,
  `ITEM_Nivel` varchar(2) DEFAULT NULL,
  `ITEM_CodigoEstruturado` varchar(50) DEFAULT NULL,
  `ITEM_ValorOrcado` decimal(19,4) DEFAULT NULL,
  `ITEM_ValorRealizado` decimal(19,4) DEFAULT NULL,
  `ITEM_CreditoDebito` varchar(2) DEFAULT NULL,
  `ITEM_Sequencial` int DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  UNIQUE KEY `ACBWITEM_PrimaryKey` (`PROJ_Codigo`,`ITEM_Codigo`,`ITEM_CodigoPai`),
  KEY `ACBWITEM_Sequencial` (`ITEM_Sequencial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acbwlimp` */

CREATE TABLE `acbwlimp` (
  `LIMP_Codigo` varchar(3) DEFAULT NULL,
  `LIMP_Descricao` varchar(30) DEFAULT NULL,
  `LIMP_TipoDeLeitura` varchar(1) DEFAULT NULL,
  `LIMP_PosIni_NumDocumento` smallint DEFAULT NULL,
  `LIMP_PosFim_NumDocumento` smallint DEFAULT NULL,
  `LIMP_PosIni_Valor` smallint DEFAULT NULL,
  `LIMP_PosFim_Valor` smallint DEFAULT NULL,
  `LIMP_SeparadorDecimal_Valor` varchar(1) DEFAULT NULL,
  `LIMP_PosIni_DebOuCred` smallint DEFAULT NULL,
  `LIMP_PosFim_DebOuCred` smallint DEFAULT NULL,
  `LIMP_PosIni_DataMovimentacaoDIA` smallint DEFAULT NULL,
  `LIMP_PosFim_DataMovimentacaoDIA` smallint DEFAULT NULL,
  `LIMP_PosIni_DataMovimentacaoMES` smallint DEFAULT NULL,
  `LIMP_PosFim_DataMovimentacaoMES` smallint DEFAULT NULL,
  `LIMP_PosIni_DataMovimentacaoANO` smallint DEFAULT NULL,
  `LIMP_PosFim_DataMovimentacaoANO` smallint DEFAULT NULL,
  `LIMP_PosIni_DescricaoHistorico` smallint DEFAULT NULL,
  `LIMP_PosFim_DescricaoHistorico` smallint DEFAULT NULL,
  `LIMP_Separador` varchar(1) DEFAULT NULL,
  `LIMP_Nome_NumDocumento` varchar(30) DEFAULT NULL,
  `LIMP_Nome_Valor` varchar(30) DEFAULT NULL,
  `LIMP_Nome_DebOuCred` varchar(30) DEFAULT NULL,
  `LIMP_Nome_DescricaoHistorico` varchar(30) DEFAULT NULL,
  `LIMP_Nome_DataMovimentacao` varchar(30) DEFAULT NULL,
  `LIMP_Nome_FormatoDataMovimentacao` varchar(15) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  UNIQUE KEY `ACBWLIMP_PrimaryKey` (`LIMP_Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acbwmexc` */

CREATE TABLE `acbwmexc` (
  `LANC_Codigo` int DEFAULT NULL,
  `BANC_Codigo` varchar(2) DEFAULT NULL,
  `MOVI_TipoDoc` varchar(2) DEFAULT NULL,
  `MOVI_NumDoc` varchar(15) DEFAULT NULL,
  `MOVI_ReferenciaBanco` varchar(17) DEFAULT NULL,
  KEY `ACBWCLAS_NumDoc` (`LANC_Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acbwmovi` */

CREATE TABLE `acbwmovi` (
  `MOVI_Id` int NOT NULL AUTO_INCREMENT,
  `BANC_Id` int DEFAULT NULL,
  `BANC_Codigo` varchar(4) DEFAULT NULL COMMENT 'removar após migração',
  `MOVI_TipoDoc` varchar(2) DEFAULT NULL,
  `MOVI_NumDoc` varchar(15) DEFAULT NULL,
  `MOVI_DataLancto` timestamp NULL DEFAULT NULL,
  `MOVI_DataOriginal` timestamp NULL DEFAULT NULL,
  `MOVI_Pendente` varchar(1) DEFAULT NULL,
  `MOVI_DataLibPend` timestamp NULL DEFAULT NULL,
  `MOVI_NomeCheque` varchar(50) DEFAULT NULL,
  `MOVI_Fornecedor` varchar(50) DEFAULT NULL,
  `MOVI_Observacoes` varchar(200) DEFAULT NULL,
  `MOVI_CodAdiantamento` varchar(5) DEFAULT NULL,
  `MOVI_CopiaImpressa` varchar(1) DEFAULT NULL,
  `MOVI_ChequeAoPortador` varchar(1) DEFAULT NULL,
  `MOVI_ChequeCruzado` varchar(1) DEFAULT NULL,
  `MOVI_Cidade` varchar(30) DEFAULT NULL,
  `MOVI_Valor` decimal(19,4) DEFAULT NULL,
  `LANC_Codigo` int DEFAULT NULL,
  `MOVI_AltAposImport` varchar(1) DEFAULT NULL,
  `MOVI_NumDocConselhoFiscal` varchar(10) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  `MOVI_ReferenciaBanco` varchar(17) DEFAULT NULL,
  `MOVI_Visivel` int DEFAULT '1',
  PRIMARY KEY (`MOVI_Id`),
  UNIQUE KEY `ACBWMOVI_PrimaryKey` (`BANC_Codigo`,`MOVI_TipoDoc`,`MOVI_NumDoc`),
  KEY `ACBWMOVI_DataLancto` (`BANC_Codigo`,`MOVI_DataLancto`),
  KEY `ACBWMOVI_NumDoc` (`BANC_Codigo`,`MOVI_NumDoc`),
  KEY `ACBWMOVI_Valor` (`BANC_Codigo`,`MOVI_TipoDoc`,`MOVI_Valor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acbwpara` */

CREATE TABLE `acbwpara` (
  `PARA_IntegContas` varchar(1) DEFAULT NULL,
  `PARA_IntegReceb` varchar(1) DEFAULT NULL,
  `PARA_SenhaDaSenha` varchar(10) DEFAULT NULL,
  `PARA_CNPJ` varchar(18) DEFAULT NULL,
  `PARA_OrdenaHist` varchar(1) DEFAULT NULL,
  `PARA_OrdenaCCUS` varchar(1) DEFAULT NULL,
  `PARA_OrdenaBANC` varchar(1) DEFAULT NULL,
  `PARA_OrdenaPLAN` varchar(1) DEFAULT NULL,
  `PARA_NomeCheque` varchar(50) DEFAULT NULL,
  `PARA_NomeCidade` varchar(40) DEFAULT NULL,
  `PARA_EstrutCCustos` varchar(20) DEFAULT NULL,
  `PARA_TextoCopia1` varchar(200) DEFAULT NULL,
  `PARA_TextoCopia2` varchar(200) DEFAULT NULL,
  `PARA_TextoCopia3` varchar(200) DEFAULT NULL,
  `PARA_ModelSelec` varchar(1) DEFAULT NULL,
  `PARA_IntegraCTW` varchar(1) DEFAULT NULL,
  `PARA_CodEmpIntegrada` varchar(2) DEFAULT NULL,
  `PARA_ObrigaCCusto` varchar(1) DEFAULT NULL,
  `PARA_ObrigaProjeto` varchar(1) DEFAULT NULL,
  `PARA_DetalharCopiaCheque` varchar(1) DEFAULT NULL,
  `PARA_LabelTabProjeto` varchar(15) DEFAULT NULL,
  `PARA_MOVIPendente` varchar(1) DEFAULT NULL,
  `PARA_SuperVisorProj1` varchar(3) DEFAULT NULL,
  `PARA_SuperVisorProj2` varchar(3) DEFAULT NULL,
  `PARA_NumChequeAutomatico` varchar(1) DEFAULT NULL,
  `PARA_ExibirCodHisotico` varchar(1) DEFAULT NULL,
  `PARA_UsarCodBancoNoNMov` varchar(1) DEFAULT NULL,
  `PARA_CMPFHistorico` varchar(3) DEFAULT NULL,
  `PARA_CMPFAliquota` decimal(19,4) DEFAULT NULL,
  `PARA_TipoNumeracaoDoc` varchar(1) DEFAULT NULL,
  `PARA_ObrigaContaContabil` bit(1) NOT NULL,
  `PARA_InclContaContabSimp` bit(1) NOT NULL,
  `PARA_PeriodoSaldoCredito` smallint DEFAULT NULL,
  `PARA_NaoFazerPerguntaBaixa` varchar(1) DEFAULT NULL,
  `PARA_RespPadraoBaixa` varchar(1) DEFAULT NULL,
  `PARA_CritDtLanc_MaiorAtual` varchar(1) DEFAULT NULL,
  `PARA_Crit_MaiorAtual_Dias` smallint DEFAULT NULL,
  `PARA_CritDtLanc_MenorAtual` varchar(1) DEFAULT NULL,
  `PARA_MesAnoFechaLancamento` timestamp NULL DEFAULT NULL,
  `PARA_TextoConselho1` text,
  `PARA_TextoConselho2` text,
  `PARA_TextoConselho3` text,
  `PARA_IntegraMONETA` varchar(1) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acbwproj` */

CREATE TABLE `acbwproj` (
  `PROJ_Codigo` varchar(3) DEFAULT NULL,
  `PROJ_Descricao` varchar(60) DEFAULT NULL,
  `PROJ_TotalOrcadoCredito` decimal(19,4) DEFAULT NULL,
  `PROJ_TotalOrcadoDebito` decimal(19,4) DEFAULT NULL,
  `PROJ_TotalRealizadoCredito` decimal(19,4) DEFAULT NULL,
  `PROJ_TotalRealizadoDebito` decimal(19,4) DEFAULT NULL,
  `PROJ_QtdNiveis` smallint DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  UNIQUE KEY `ACBWPROJ_Codigo` (`PROJ_Codigo`),
  KEY `ACBWPROJ_Descricao` (`PROJ_Descricao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acbwprus` */

CREATE TABLE `acbwprus` (
  `PROJ_Codigo` varchar(3) DEFAULT NULL,
  `USUA_Sequencial` varchar(3) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  UNIQUE KEY `ACBWPRUS_PrimaryKey` (`PROJ_Codigo`,`USUA_Sequencial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acbwreci` */

CREATE TABLE `acbwreci` (
  `RECI_Id` int NOT NULL AUTO_INCREMENT,
  `RECI_Codigo` int DEFAULT NULL,
  `RECI_Descricao` varchar(255) DEFAULT NULL,
  `RECI_Cidade` varchar(100) DEFAULT NULL,
  `RECI_PagNome` varchar(255) DEFAULT NULL,
  `RECI_PagCPFCNPJ` varchar(1) DEFAULT NULL,
  `RECI_PagNumero` varchar(20) DEFAULT NULL,
  `RECI_PagEndereco` varchar(255) DEFAULT NULL,
  `RECI_RecNome` varchar(255) DEFAULT NULL,
  `RECI_RecCPFCNPJ` varchar(1) DEFAULT NULL,
  `RECI_RecNumero` varchar(20) DEFAULT NULL,
  `RECI_RecIdentidade` varchar(10) DEFAULT NULL,
  `RECI_RecPrgEmissor` varchar(20) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  `RECI_Visivel` int DEFAULT '1',
  PRIMARY KEY (`RECI_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acpwagen` */

CREATE TABLE `acpwagen` (
  `idUser` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `startDate` varchar(255) DEFAULT NULL,
  `backgroundColor` varchar(255) DEFAULT NULL,
  KEY `idUser` (`idUser`,`title`,`startDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `acpwbaix` */

CREATE TABLE `acpwbaix` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENTR_Id` int NOT NULL,
  `BAIX_DataBaixa` timestamp(6) NULL DEFAULT NULL,
  `BAIX_ValorPagoReal` decimal(19,2) DEFAULT NULL,
  `BAIX_ValorPagoMoeda` decimal(19,2) DEFAULT NULL,
  `BAIX_Juros` decimal(19,4) DEFAULT NULL,
  `BAIX_Multa` decimal(19,4) DEFAULT NULL,
  `BAIX_Numdoc` varchar(10) DEFAULT NULL,
  `conta_bancaria_id` int DEFAULT NULL,
  `BANC_Codigo` varchar(2) DEFAULT NULL,
  `BAIX_TipoDoc` varchar(2) DEFAULT NULL,
  `BAIX_Origem` varchar(3) DEFAULT NULL,
  `BAIX_OutrosAcrescimos` decimal(19,4) DEFAULT NULL,
  `BAIX_OutrosDescontos` decimal(19,4) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp(6) NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  `BAIX_Desconto` decimal(19,4) DEFAULT NULL,
  `TIPOJUR_Cod` int DEFAULT NULL,
  `BAIX_LocalPagamento` varchar(5) DEFAULT NULL,
  `BAIX_IR` decimal(19,4) DEFAULT NULL,
  KEY `ENTR_Id` (`ENTR_Id`),
  KEY `ID` (`ID`),
  CONSTRAINT `acpwbaix_ibfk_1` FOREIGN KEY (`ENTR_Id`) REFERENCES `acpwentr` (`ENTR_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13828 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acpwentr` */

CREATE TABLE `acpwentr` (
  `ENTR_Id` int NOT NULL AUTO_INCREMENT,
  `FORN_Id` int DEFAULT NULL,
  `ENTR_NumTitulo` varchar(15) DEFAULT NULL,
  `ENTR_Parcela` varchar(2) DEFAULT NULL,
  `ENTR_LocalPagto` varchar(1) DEFAULT NULL,
  `CCUS_Codigo` varchar(10) DEFAULT NULL,
  `HIST_Codigo` varchar(3) DEFAULT NULL,
  `ENTR_PContasId` varchar(20) DEFAULT NULL,
  `ENTR_ComplHist` varchar(255) DEFAULT NULL,
  `ENTR_DataEmissao` timestamp NULL DEFAULT NULL,
  `ENTR_Vencimento` timestamp NULL DEFAULT NULL,
  `MOED_Codigo` varchar(5) DEFAULT NULL,
  `ENTR_ValorMoeda` decimal(19,2) DEFAULT NULL,
  `ENTR_PercMulta` decimal(19,4) DEFAULT NULL,
  `ENTR_TipoJuros` int DEFAULT NULL,
  `ENTR_Juros` decimal(19,4) DEFAULT NULL,
  `ENTR_PercDesconto` decimal(19,4) DEFAULT NULL,
  `ENTR_Previsao` varchar(5) DEFAULT NULL,
  `ENTR_Prioridade` double(24,2) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp(6) NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  `ENTR_Situacao` varchar(1) DEFAULT NULL,
  `ENTR_Visivel` int DEFAULT '1',
  `ENTR_Ano` int DEFAULT NULL,
  `ENTR_Mes` int DEFAULT NULL,
  `ENTR_TipoDesconto` int DEFAULT NULL,
  `ENTR_CodGeracaoCredito` int DEFAULT NULL,
  `ENTR_TipoDoc` int DEFAULT NULL,
  `ENTR_TipoConta` int DEFAULT '0',
  `ENTR_OutrosAcrescimos` decimal(19,2) DEFAULT NULL,
  `ENTR_OutrosDescontos` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`ENTR_Id`),
  KEY `ENTR_TipoJuros` (`ENTR_TipoJuros`),
  KEY `HIST_Codigo` (`HIST_Codigo`),
  CONSTRAINT `acpwentr_ibfk_1` FOREIGN KEY (`ENTR_TipoJuros`) REFERENCES `tabetipojur` (`TIPOJUR_COD`),
  CONSTRAINT `acpwentr_ibfk_2` FOREIGN KEY (`HIST_Codigo`) REFERENCES `tabehist` (`HIST_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=37280 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acpwentr_ccusto` */

CREATE TABLE `acpwentr_ccusto` (
  `ENTR_Id` int DEFAULT NULL,
  `CCUS_Codigo` varchar(10) DEFAULT NULL,
  `ENTR_ValorMoeda` decimal(19,2) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp(6) NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  KEY `CCUS_Codigo` (`CCUS_Codigo`),
  KEY `ENTR_Id` (`ENTR_Id`),
  CONSTRAINT `acpwentr_ccusto_ibfk_1` FOREIGN KEY (`ENTR_Id`) REFERENCES `acpwentr` (`ENTR_Id`),
  CONSTRAINT `acpwentr_ccusto_ibfk_2` FOREIGN KEY (`CCUS_Codigo`) REFERENCES `tabeccus` (`CCUS_Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acpwforn` */

CREATE TABLE `acpwforn` (
  `FORN_Id` int NOT NULL AUTO_INCREMENT,
  `FORN_Codigo` varchar(10) DEFAULT NULL,
  `FORN_Nome` varchar(50) DEFAULT NULL,
  `FORN_Endereco` varchar(50) DEFAULT NULL,
  `FORN_Numero` varchar(10) DEFAULT NULL,
  `FORN_Complemento` varchar(50) DEFAULT NULL,
  `FORN_Bairro` varchar(20) DEFAULT NULL,
  `FORN_Cidade` int DEFAULT NULL,
  `FORN_Estado` varchar(30) DEFAULT NULL,
  `FORN_CEP` varchar(8) DEFAULT NULL,
  `FORN_FoneContato` varchar(12) DEFAULT NULL,
  `FORN_FoneContato2` varchar(12) DEFAULT NULL,
  `FORN_FoneFax` varchar(12) DEFAULT NULL,
  `FORN_FoneCelular` varchar(12) DEFAULT NULL,
  `FORN_PeriodoPgto` varchar(1) DEFAULT NULL,
  `FORN_Periodo1` varchar(18) DEFAULT NULL,
  `FORN_Periodo2` int DEFAULT NULL,
  `FORN_ValorPrevisto` decimal(19,2) DEFAULT NULL,
  `FORN_DiaMesVencto` varchar(4) DEFAULT NULL,
  `FORN_ValorPagar` decimal(19,2) DEFAULT NULL,
  `MOED_Codigo` varchar(5) DEFAULT NULL,
  `FORN_Contato` varchar(50) DEFAULT NULL,
  `FORN_Tipo` varchar(1) DEFAULT NULL,
  `FORN_CGC` varchar(18) DEFAULT NULL,
  `FORN_Tesoureiro` varchar(50) DEFAULT NULL,
  `FORN_Presidente` varchar(50) DEFAULT NULL,
  `FORN_Email` varchar(50) DEFAULT NULL,
  `FORN_HomePage` varchar(50) DEFAULT NULL,
  `FORN_Observacao` varchar(255) DEFAULT NULL,
  `FORN_Prioridade` double(24,2) DEFAULT NULL,
  `FORN_Juros` decimal(19,4) DEFAULT NULL,
  `FORN_PercMulta` decimal(19,4) DEFAULT NULL,
  `FORN_PercDesconto` decimal(19,4) DEFAULT NULL,
  `FORN_PLAN_Codigo` varchar(20) DEFAULT NULL,
  `FORN_CCUS_Codigo` varchar(10) DEFAULT NULL,
  `FORN_HIST_Codigo` varchar(3) DEFAULT NULL,
  `FORN_ComplHist` varchar(255) DEFAULT NULL,
  `FORN_TipoJuros` varchar(1) DEFAULT NULL,
  `FORN_Logomarca` longblob,
  `FORN_NomeFantasia` varchar(50) DEFAULT NULL,
  `FORN_Atividade` varchar(3) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp(6) NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `FORN_Visivel` int DEFAULT '1',
  `FORN_CredenciadoClube` varchar(1) DEFAULT NULL,
  `FORN_ValidadeContrato` date DEFAULT NULL,
  `FORN_Vantagens` longtext,
  `FORN_Valor_Recibo` double DEFAULT NULL,
  PRIMARY KEY (`FORN_Id`),
  UNIQUE KEY `ACPWFORN_PrimaryKey` (`FORN_Codigo`),
  KEY `ACPWFORN_Nome` (`FORN_Nome`),
  KEY `FORN_Atividade` (`FORN_Atividade`),
  CONSTRAINT `acpwforn_ibfk_1` FOREIGN KEY (`FORN_Atividade`) REFERENCES `tabeativ` (`ATIV_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=783 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acrwagen` */

CREATE TABLE `acrwagen` (
  `CLIE_Codigo` varchar(10) DEFAULT NULL,
  `AGEN_DataALembrar` timestamp NULL DEFAULT NULL,
  `AGEN_Anotacao` text,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  KEY `ACRWAGEN_CLIE` (`CLIE_Codigo`,`AGEN_DataALembrar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acrwbaix` */

CREATE TABLE `acrwbaix` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENTR_Id` int DEFAULT NULL,
  `TPCR_Codigo` varchar(10) DEFAULT NULL,
  `TABEBANC_Codigo` varchar(4) DEFAULT NULL,
  `ENTR_LocalPagto` varchar(1) DEFAULT NULL,
  `ENTR_DataEmissao` timestamp NULL DEFAULT NULL,
  `ENTR_Vencimento` timestamp NULL DEFAULT NULL,
  `MOED_Codigo` varchar(5) DEFAULT NULL,
  `ENTR_ValorMoeda` decimal(19,2) DEFAULT NULL,
  `ENTR_ValorReal` decimal(19,2) DEFAULT NULL,
  `ENTR_CodGeracaoCredito` varchar(10) DEFAULT NULL,
  `BAIX_DataBaixa` timestamp NULL DEFAULT NULL,
  `BAIX_DataPagamento` timestamp NULL DEFAULT NULL,
  `BAIX_ValorPagoReal` decimal(19,2) DEFAULT NULL,
  `BAIX_ValorPagoMoeda` double(24,2) DEFAULT NULL,
  `BAIX_Juros` decimal(19,4) DEFAULT NULL,
  `BAIX_Multa` decimal(19,4) DEFAULT NULL,
  `BAIX_Desconto` decimal(19,4) DEFAULT NULL,
  `BAIX_OutrosAcrescimos` decimal(19,4) DEFAULT NULL,
  `BAIX_OutrosDescontos` decimal(19,4) DEFAULT NULL,
  `BAIX_Origem` varchar(5) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  `BAIX_LocalPagamento` varchar(255) DEFAULT NULL,
  `BAIX_IR` decimal(19,4) DEFAULT NULL,
  `TIPOJUR_Cod` int DEFAULT NULL,
  KEY `ENTR_Id` (`ENTR_Id`),
  KEY `TABEBANC_Codigo` (`TABEBANC_Codigo`),
  KEY `TPCR_Codigo` (`TPCR_Codigo`),
  KEY `ID` (`ID`),
  CONSTRAINT `acrwbaix_ibfk_1` FOREIGN KEY (`ENTR_Id`) REFERENCES `acrwentr` (`ENTR_Id`),
  CONSTRAINT `acrwbaix_ibfk_2` FOREIGN KEY (`TPCR_Codigo`) REFERENCES `acrwtpcr` (`TPCR_Codigo`),
  CONSTRAINT `acrwbaix_ibfk_3` FOREIGN KEY (`TABEBANC_Codigo`) REFERENCES `conta_bancaria` (`BANC_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=27802 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acrwclie` */

CREATE TABLE `acrwclie` (
  `CLIE_Id` int NOT NULL AUTO_INCREMENT,
  `CLIE_Codigo` varchar(10) DEFAULT NULL,
  `CLIE_Nome` varchar(255) DEFAULT NULL,
  `CLIE_STM` varchar(20) DEFAULT NULL,
  `CLIE_QtdTrabBase` int DEFAULT NULL,
  `CLIE_QtdFiliados` int DEFAULT NULL,
  `CLIE_QtdFiliadosQuites` int DEFAULT NULL,
  `CLIE_IniMan` timestamp NULL DEFAULT NULL,
  `CLIE_FimMan` timestamp NULL DEFAULT NULL,
  `CLIE_DataFundação` timestamp NULL DEFAULT NULL,
  `CLIE_DataEleicao` timestamp NULL DEFAULT NULL,
  `REGI_Codigo` varchar(3) DEFAULT NULL,
  `TPCL_Codigo` int DEFAULT NULL,
  `CLIE_BoletaUnica` varchar(1) DEFAULT NULL,
  `CLIE_FormaJurosMulta` varchar(1) DEFAULT NULL,
  `CLIE_Endereco` varchar(50) DEFAULT NULL,
  `CLIE_Numero` varchar(10) DEFAULT NULL,
  `CLIE_Complemento` varchar(50) DEFAULT NULL,
  `CLIE_Bairro` varchar(20) DEFAULT NULL,
  `CLIE_Cidade` int DEFAULT NULL,
  `CLIE_Estado` varchar(30) DEFAULT NULL,
  `CLIE_CEP` varchar(8) DEFAULT NULL,
  `CLIE_InscMunicipal` varchar(20) DEFAULT NULL,
  `CLIE_InscEstadual` varchar(20) DEFAULT NULL,
  `CLIE_HistId` int DEFAULT NULL,
  `CLIE_CCustoId` int DEFAULT NULL,
  `CLIE_PContasId` varchar(20) DEFAULT NULL,
  `CLIE_FoneContato` varchar(14) DEFAULT NULL,
  `CLIE_FoneContato2` varchar(14) DEFAULT NULL,
  `CLIE_FoneFax` varchar(14) DEFAULT NULL,
  `CLIE_FoneCelular` varchar(14) DEFAULT NULL,
  `CLIE_Contato` varchar(50) DEFAULT NULL,
  `CLIE_CNPJ_CPF` varchar(18) DEFAULT NULL,
  `CLIE_Tesoureiro` varchar(50) DEFAULT NULL,
  `CLIE_Presidente` varchar(50) DEFAULT NULL,
  `CLIE_Diretoria` varchar(50) DEFAULT NULL,
  `CLIE_Função` varchar(50) DEFAULT NULL,
  `CLIE_Email` varchar(50) DEFAULT NULL,
  `CLIE_HomePage` varchar(50) DEFAULT NULL,
  `CLIE_Observacao` text,
  `CLIE_Logomarca` longblob,
  `CLIE_Contador` varchar(50) DEFAULT NULL,
  `CLIE_CodigoSIAPE` varchar(10) DEFAULT NULL,
  `CLIE_Tolerancia` smallint DEFAULT NULL,
  `CLIE_JurosDiaPerc` decimal(19,4) DEFAULT NULL,
  `CLIE_JurosDiaValor` decimal(19,4) DEFAULT NULL,
  `CLIE_JurosMesPerc` decimal(19,4) DEFAULT NULL,
  `CLIE_JurosMesValor` decimal(19,4) DEFAULT NULL,
  `CLIE_MultaPerc` decimal(19,4) DEFAULT NULL,
  `CLIE_MultaValor` decimal(19,4) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  `CLIE_CodigoSIAPE2` varchar(10) DEFAULT NULL,
  `CLIE_NomeParaRelatorios` varchar(255) DEFAULT NULL,
  `CLIE_Sigla` varchar(50) DEFAULT NULL,
  `CLIE_Database` varchar(255) DEFAULT NULL,
  `CLIE_Logo_App` varchar(255) DEFAULT NULL,
  `CLIE_Recipient_id` varchar(255) DEFAULT NULL,
  `CLIE_Desconto_Porcent` decimal(5,2) DEFAULT '1.00',
  `CLIE_Bisa_Porcent` decimal(5,2) DEFAULT '5.00',
  `CLIE_Logo_Carteira` varchar(255) DEFAULT NULL,
  `CLIE_Visivel` int DEFAULT '1',
  `check` varchar(20) DEFAULT '1',
  `CLIE_Site` varchar(255) DEFAULT NULL,
  `CLIE_CartaSindical` varchar(150) DEFAULT NULL,
  `CLIE_VencimentoSindicato` int DEFAULT NULL,
  `Link_Filiados` varchar(150) DEFAULT NULL,
  `Link_Moneta` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`CLIE_Id`),
  UNIQUE KEY `ACRWCLIE_PrimaryKey` (`CLIE_Codigo`),
  KEY `ACRWCLIE_Nome` (`CLIE_Nome`),
  KEY `ACRWCLIE_Tipo` (`TPCL_Codigo`),
  CONSTRAINT `acrwclie_ibfk_1` FOREIGN KEY (`TPCL_Codigo`) REFERENCES `acrwtpcl` (`TPCL_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=642 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acrwclie_copy` */

CREATE TABLE `acrwclie_copy` (
  `CLIE_Id` int NOT NULL AUTO_INCREMENT,
  `CLIE_Codigo` varchar(10) DEFAULT NULL,
  `CLIE_Nome` varchar(255) DEFAULT NULL,
  `CLIE_STM` varchar(20) DEFAULT NULL,
  `CLIE_QtdTrabBase` int DEFAULT NULL,
  `CLIE_QtdFiliados` int DEFAULT NULL,
  `CLIE_QtdFiliadosQuites` int DEFAULT NULL,
  `CLIE_IniMan` timestamp NULL DEFAULT NULL,
  `CLIE_FimMan` timestamp NULL DEFAULT NULL,
  `CLIE_DataFundação` timestamp NULL DEFAULT NULL,
  `CLIE_DataEleicao` timestamp NULL DEFAULT NULL,
  `REGI_Codigo` varchar(3) DEFAULT NULL,
  `TPCL_Codigo` int DEFAULT NULL,
  `CLIE_BoletaUnica` varchar(1) DEFAULT NULL,
  `CLIE_FormaJurosMulta` varchar(1) DEFAULT NULL,
  `CLIE_Endereco` varchar(50) DEFAULT NULL,
  `CLIE_Numero` varchar(10) DEFAULT NULL,
  `CLIE_Complemento` varchar(50) DEFAULT NULL,
  `CLIE_Bairro` varchar(20) DEFAULT NULL,
  `CLIE_Cidade` int DEFAULT NULL,
  `CLIE_Estado` varchar(30) DEFAULT NULL,
  `CLIE_CEP` varchar(8) DEFAULT NULL,
  `CLIE_InscMunicipal` varchar(20) DEFAULT NULL,
  `CLIE_InscEstadual` varchar(20) DEFAULT NULL,
  `CLIE_HistId` int DEFAULT NULL,
  `CLIE_CCustoId` int DEFAULT NULL,
  `CLIE_PContasId` varchar(20) DEFAULT NULL,
  `CLIE_FoneContato` varchar(14) DEFAULT NULL,
  `CLIE_FoneContato2` varchar(14) DEFAULT NULL,
  `CLIE_FoneFax` varchar(14) DEFAULT NULL,
  `CLIE_FoneCelular` varchar(14) DEFAULT NULL,
  `CLIE_Contato` varchar(50) DEFAULT NULL,
  `CLIE_CNPJ_CPF` varchar(18) DEFAULT NULL,
  `CLIE_Tesoureiro` varchar(50) DEFAULT NULL,
  `CLIE_Presidente` varchar(50) DEFAULT NULL,
  `CLIE_Diretoria` varchar(50) DEFAULT NULL,
  `CLIE_Função` varchar(50) DEFAULT NULL,
  `CLIE_Email` varchar(50) DEFAULT NULL,
  `CLIE_HomePage` varchar(50) DEFAULT NULL,
  `CLIE_Observacao` text,
  `CLIE_Logomarca` longblob,
  `CLIE_Contador` varchar(50) DEFAULT NULL,
  `CLIE_CodigoSIAPE` varchar(10) DEFAULT NULL,
  `CLIE_Tolerancia` smallint DEFAULT NULL,
  `CLIE_JurosDiaPerc` decimal(19,4) DEFAULT NULL,
  `CLIE_JurosDiaValor` decimal(19,4) DEFAULT NULL,
  `CLIE_JurosMesPerc` decimal(19,4) DEFAULT NULL,
  `CLIE_JurosMesValor` decimal(19,4) DEFAULT NULL,
  `CLIE_MultaPerc` decimal(19,4) DEFAULT NULL,
  `CLIE_MultaValor` decimal(19,4) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  `CLIE_CodigoSIAPE2` varchar(10) DEFAULT NULL,
  `CLIE_NomeParaRelatorios` varchar(255) DEFAULT NULL,
  `CLIE_Sigla` varchar(50) DEFAULT NULL,
  `CLIE_Database` varchar(255) DEFAULT NULL,
  `CLIE_Logo_App` varchar(255) DEFAULT NULL,
  `CLIE_Recipient_id` varchar(255) DEFAULT NULL,
  `CLIE_Desconto_Porcent` decimal(5,2) DEFAULT '1.00',
  `CLIE_Bisa_Porcent` decimal(5,2) DEFAULT '5.00',
  `CLIE_Logo_Carteira` varchar(255) DEFAULT NULL,
  `CLIE_Visivel` int DEFAULT '1',
  `check` varchar(20) DEFAULT '1',
  `CLIE_Site` varchar(255) DEFAULT NULL,
  `CLIE_CartaSindical` varchar(150) DEFAULT NULL,
  `CLIE_VencimentoSindicato` int DEFAULT NULL,
  `Link_Filiados` varchar(150) DEFAULT NULL,
  `Link_Moneta` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`CLIE_Id`),
  UNIQUE KEY `ACRWCLIE_PrimaryKey` (`CLIE_Codigo`),
  KEY `ACRWCLIE_Nome` (`CLIE_Nome`),
  KEY `ACRWCLIE_Tipo` (`TPCL_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=641 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acrwcont` */

CREATE TABLE `acrwcont` (
  `CONT_Id` int NOT NULL AUTO_INCREMENT,
  `CLIE_Id` int NOT NULL,
  `CONT_Codigo` varchar(5) DEFAULT NULL,
  `MDCN_Codigo` varchar(10) DEFAULT NULL,
  `TPCR_Codigo` varchar(10) DEFAULT NULL,
  `CONT_PeriodoPagto` varchar(1) DEFAULT NULL,
  `CONT_DiaMesVencto` smallint DEFAULT NULL,
  `CONT_Cor_Sub` varchar(1) DEFAULT NULL,
  `CONT_QtdMoeda` double(24,2) DEFAULT NULL,
  `CONT_Mes1aDobra` smallint DEFAULT NULL,
  `CONT_Mes2aDobra` smallint DEFAULT NULL,
  `MOED_Codigo` varchar(5) DEFAULT NULL,
  `CONT_Valor` decimal(19,2) DEFAULT NULL,
  `CONT_ValorAnterior` decimal(19,2) DEFAULT NULL,
  `CONT_PercISS` double(24,2) DEFAULT NULL,
  `CONT_PercIR` double(24,2) DEFAULT NULL,
  `CONT_PercINSS` double(24,2) DEFAULT NULL,
  `CONT_NaturezaOperacao` varchar(15) DEFAULT NULL,
  `CONT_DescServico` text,
  `CONT_DadosDeposito` text,
  `CONT_DataInicio` timestamp NULL DEFAULT NULL,
  `CONT_DataFinal` timestamp NULL DEFAULT NULL,
  `CONT_Situacao` varchar(1) DEFAULT NULL,
  `CONT_EmitirBoleta` varchar(1) DEFAULT NULL,
  `CONT_InstrucaoBoleta` text,
  `CONT_EmitirNF` varchar(1) DEFAULT NULL,
  `conta_bancaria_id` int DEFAULT NULL,
  `TABEBANC_Codigo` varchar(4) DEFAULT NULL,
  `CONT_PrazoCarencia` timestamp NULL DEFAULT NULL,
  `CONT_DataUltPagto` timestamp NULL DEFAULT NULL,
  `CONT_DataUltReajuste` timestamp NULL DEFAULT NULL,
  `CONT_DataProxReajuste` timestamp NULL DEFAULT NULL,
  `CONT_Observacao` text,
  `CONT_EmailAdministrador` varchar(50) DEFAULT NULL,
  `CONT_Objeto` varchar(50) DEFAULT NULL,
  `CONT_CodigoProcesso` varchar(25) DEFAULT NULL,
  `CONT_AdvogadoNome` varchar(50) DEFAULT NULL,
  `CONT_VaraDescricao` varchar(50) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  `CONT_Anotacao` varchar(255) DEFAULT NULL,
  `CONT_Discriminacao` varchar(255) DEFAULT NULL,
  `CONT_JurosDiaPerc` decimal(10,2) DEFAULT NULL,
  `CONT_JurosDiaValor` decimal(10,2) DEFAULT NULL,
  `CONT_JurosMesPerc` decimal(10,2) DEFAULT NULL,
  `CONT_JurosMesValor` decimal(10,2) DEFAULT NULL,
  `CONT_MultaPerc` decimal(10,2) DEFAULT NULL,
  `CONT_MultaValor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`CONT_Id`),
  KEY `CLIE_Id` (`CLIE_Id`),
  KEY `TABEBANC_Codigo` (`TABEBANC_Codigo`),
  KEY `TPCR_Codigo` (`TPCR_Codigo`),
  CONSTRAINT `acrwcont_ibfk_1` FOREIGN KEY (`CLIE_Id`) REFERENCES `acrwclie` (`CLIE_Id`),
  CONSTRAINT `acrwcont_ibfk_2` FOREIGN KEY (`TPCR_Codigo`) REFERENCES `acrwtpcr` (`TPCR_Codigo`),
  CONSTRAINT `acrwcont_ibfk_3` FOREIGN KEY (`TABEBANC_Codigo`) REFERENCES `conta_bancaria` (`BANC_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=740 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acrwcont_bisasist` */

CREATE TABLE `acrwcont_bisasist` (
  `CONT_Id` int NOT NULL,
  `SIST_Id` int NOT NULL,
  PRIMARY KEY (`CONT_Id`,`SIST_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acrwentr` */

CREATE TABLE `acrwentr` (
  `ENTR_Id` int NOT NULL AUTO_INCREMENT,
  `CLIE_Id` int DEFAULT NULL,
  `CONT_Id` int DEFAULT NULL,
  `TPCR_Codigo` varchar(10) DEFAULT NULL,
  `ENTR_Ano` smallint DEFAULT NULL,
  `ENTR_Mes` smallint DEFAULT NULL,
  `ENTR_NumTitulo` varchar(35) DEFAULT NULL,
  `conta_bancaria_id` int DEFAULT NULL,
  `ENTR_HistCodigo` int DEFAULT NULL,
  `ENTR_CCustoId` int DEFAULT NULL,
  `ENTR_PContasId` varchar(20) DEFAULT NULL,
  `TABEBANC_Codigo` varchar(4) DEFAULT NULL,
  `ENTR_Parcela` varchar(2) DEFAULT NULL,
  `ENTR_LocalPagto` varchar(1) DEFAULT NULL,
  `ENTR_DataEmissao` timestamp NULL DEFAULT NULL,
  `ENTR_Vencimento` timestamp NULL DEFAULT NULL,
  `MOED_Codigo` varchar(5) DEFAULT NULL,
  `ENTR_ValorMoeda` decimal(19,2) DEFAULT NULL,
  `ENTR_ValorReal` decimal(19,2) DEFAULT NULL,
  `ENTR_CodGeracaoCredito` int DEFAULT NULL,
  `ENTR_Situacao` varchar(5) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  `ENTR_Visivel` int DEFAULT '1',
  `ENTR_TipoDesconto` int DEFAULT NULL,
  `ENTR_Prioridade` int DEFAULT NULL,
  `ENTR_ComplHist` longblob,
  `BOLE_Titulo` varchar(50) DEFAULT NULL,
  `ENTR_TipoConta` int DEFAULT '1',
  PRIMARY KEY (`ENTR_Id`),
  KEY `CLIE_Id` (`CLIE_Id`),
  KEY `CONT_Id` (`CONT_Id`),
  KEY `TPCR_Codigo` (`TPCR_Codigo`),
  CONSTRAINT `acrwentr_ibfk_1` FOREIGN KEY (`CLIE_Id`) REFERENCES `acrwclie` (`CLIE_Id`),
  CONSTRAINT `acrwentr_ibfk_2` FOREIGN KEY (`CONT_Id`) REFERENCES `acrwcont` (`CONT_Id`),
  CONSTRAINT `acrwentr_ibfk_3` FOREIGN KEY (`TPCR_Codigo`) REFERENCES `acrwtpcr` (`TPCR_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=30821 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acrwsistcont` */

CREATE TABLE `acrwsistcont` (
  `SIST_Codigo` varchar(3) DEFAULT NULL,
  `CLIE_Codigo` varchar(10) DEFAULT NULL,
  `CONT_Codigo` varchar(5) DEFAULT NULL,
  UNIQUE KEY `ACRWSISTCONT_PrimaryKey` (`SIST_Codigo`,`CLIE_Codigo`,`CONT_Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acrwsitu` */

CREATE TABLE `acrwsitu` (
  `SITU_Codigo` varchar(10) DEFAULT NULL,
  `SITU_Descricao` varchar(50) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  UNIQUE KEY `ACRWSITU_PrimaryKey` (`SITU_Codigo`),
  KEY `ACRWSITU_Descricao` (`SITU_Descricao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acrwtpcl` */

CREATE TABLE `acrwtpcl` (
  `TPCL_Codigo` int NOT NULL AUTO_INCREMENT,
  `TPCL_Descricao` varchar(50) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`TPCL_Codigo`),
  UNIQUE KEY `ACRWTPCL_PrimaryKey` (`TPCL_Codigo`),
  KEY `ACRWTPCL_Descricao` (`TPCL_Descricao`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acrwtpcr` */

CREATE TABLE `acrwtpcr` (
  `TPCR_Codigo` varchar(10) DEFAULT NULL,
  `TPCR_Descricao` varchar(50) DEFAULT NULL,
  `TPCR_InstrucaoBoleta` text,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT NULL,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  `TPCR_Visivel` tinyint(1) NOT NULL DEFAULT '1',
  KEY `ACRWTPCR_Codigo` (`TPCR_Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `bisaclie` */

CREATE TABLE `bisaclie` (
  `BISACLIE_Nome` varchar(100) DEFAULT NULL,
  `BISACLIE_SistsAutorizados` varchar(255) DEFAULT NULL,
  `BISACLIE_Contato` varchar(50) DEFAULT NULL,
  `BISACLIE_EMail` varchar(50) DEFAULT NULL,
  `BISACLIE_CEP` varchar(10) DEFAULT NULL,
  `BISACLIE_Endereco` varchar(255) DEFAULT NULL,
  `BISACLIE_Numero` varchar(10) DEFAULT NULL,
  `BISACLIE_Complemento` varchar(255) DEFAULT NULL,
  `BISACLIE_Bairro` varchar(255) DEFAULT NULL,
  `BISACLIE_Estado` varchar(2) DEFAULT NULL,
  `BISACLIE_Cidade` int DEFAULT NULL,
  `BISACLIE_Site` varchar(255) DEFAULT NULL,
  `BISACLIE_Logomarca` longblob,
  `BISACLIE_CheckSum` int DEFAULT NULL,
  `BISACLIE_ImgChk1` int DEFAULT NULL,
  `BISACLIE_ImgChk2` int DEFAULT NULL,
  `BISACLIE_ImgChk3` int DEFAULT NULL,
  `BISACLIE_Sigla` varchar(30) DEFAULT NULL,
  `BISACLIE_NomeParaRelatorios` longblob,
  `BISACLIE_CNPJ` varchar(15) DEFAULT NULL,
  `BISACLIE_SIAPE1` varchar(5) DEFAULT NULL,
  `BISACLIE_SIAPE2` varchar(5) DEFAULT NULL,
  `BISACLIE_Codigo` varchar(10) DEFAULT NULL,
  `BISACLIE_InscEstadual` varchar(10) DEFAULT NULL,
  `BISACLIE_InscMunicipal` varchar(10) DEFAULT NULL,
  `BISACLIE_Certificado` varchar(255) DEFAULT NULL,
  `BISACLIE_Senha_Certificado` varchar(255) DEFAULT NULL,
  KEY `bisaclie_ibfk_2` (`BISACLIE_Cidade`),
  CONSTRAINT `bisaclie_ibfk_2` FOREIGN KEY (`BISACLIE_Cidade`) REFERENCES `tabecidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `bisasist` */

CREATE TABLE `bisasist` (
  `BISASIST_Id` int NOT NULL AUTO_INCREMENT,
  `BISASIST_Sigla` varchar(3) DEFAULT NULL,
  `BISASIST_Datalimite` varchar(10) DEFAULT NULL,
  `BISASIST_Descricao` varchar(40) DEFAULT NULL,
  `BISASIST_VersaoLimite` varchar(6) DEFAULT NULL,
  `BISASIST_Opcoes` varchar(1) DEFAULT NULL,
  `BISASIST_ChecaSenha` varchar(1) DEFAULT NULL,
  `BISASIST_ImprimeLogo` varchar(1) DEFAULT NULL,
  `BISASIST_QtdEmpresas` smallint DEFAULT NULL,
  `BISASIST_ProxOrganizacao` varchar(10) DEFAULT NULL,
  `BISASIST_CheckSum` varchar(40) DEFAULT NULL,
  `BISASIST_DataAtual` timestamp NULL DEFAULT NULL,
  `BISASIST_UtilizacoesNoDia` int DEFAULT NULL,
  `BISASIST_MaxUtilizacoesNoDia` int DEFAULT NULL,
  `BISASIST_UtilizacoesTotais` int DEFAULT NULL,
  `BISASIST_Contrato` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`BISASIST_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `bisausua` */

CREATE TABLE `bisausua` (
  `BISAUSUA_Id` int NOT NULL AUTO_INCREMENT,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  `BISAUSUA_Nome` varchar(15) DEFAULT NULL,
  `BISAUSUA_Foto` longblob,
  `BISAUSUA_NivelAcesso` varchar(1) DEFAULT NULL,
  `BISAUSUA_Senha` varchar(50) DEFAULT NULL,
  `BISAUSUA_Visivel` int DEFAULT '1',
  `BISAUSUA_Atualizacao` datetime DEFAULT NULL,
  PRIMARY KEY (`BISAUSUA_Id`),
  UNIQUE KEY `BISAUSUA_PrimaryKey` (`BISAUSUA_Sequencial`),
  KEY `BISAUSUA_Nome` (`BISAUSUA_Nome`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `boletosCron` */

CREATE TABLE `boletosCron` (
  `BOLE_Id` int NOT NULL AUTO_INCREMENT,
  `CLIE_Id` int DEFAULT NULL,
  `ID_Boleto` int DEFAULT NULL,
  `BOLE_CGC` varchar(20) DEFAULT NULL,
  `BOLE_CGCM` varchar(20) DEFAULT NULL,
  `BOLE_NomeCliente` varchar(250) DEFAULT NULL,
  `BOLE_CEP` varchar(9) DEFAULT NULL,
  `BOLE_EndeCliente` varchar(100) DEFAULT NULL,
  `BOLE_EndeNum` varchar(15) DEFAULT NULL,
  `BOLE_UF` char(2) DEFAULT NULL,
  `BOLE_Cidade` varchar(50) DEFAULT NULL,
  `BOLE_Bairro` varchar(50) DEFAULT NULL,
  `BOLE_Email` varchar(50) DEFAULT NULL,
  `BOLE_CEPCedente` varchar(15) DEFAULT NULL,
  `BOLE_EMAILCedente` varchar(50) DEFAULT NULL,
  `BOLE_InstrucaoBoleta` varchar(255) DEFAULT NULL,
  `BOLE_ValorDocumento` decimal(10,2) DEFAULT NULL,
  `BOLE_Vencimento` date DEFAULT NULL,
  `BOLE_Erros` varchar(450) DEFAULT NULL,
  `BOLE_Data` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `BOLE_Visivel` tinyint DEFAULT '1',
  `BOLE_Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`BOLE_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3366 DEFAULT CHARSET=latin1;

/*Table structure for table `boletos_nao_sicronizados` */

CREATE TABLE `boletos_nao_sicronizados` (
  `id_sicronizado` int NOT NULL AUTO_INCREMENT,
  `nome_sicronizado` varchar(255) DEFAULT NULL,
  `cpf_sicronizado` varchar(30) DEFAULT NULL,
  `cnpj_sicronizado` varchar(30) DEFAULT NULL,
  `dataemissao_sicronizado` varchar(100) DEFAULT NULL,
  `databaixa_sicronizado` varchar(100) DEFAULT NULL,
  `datavencimento_sicronizado` varchar(100) DEFAULT NULL,
  `valor_sicronizado` decimal(10,2) DEFAULT NULL,
  `endereco_sicronizado` varchar(200) DEFAULT NULL,
  `numero_sicronizado` varchar(15) DEFAULT NULL,
  `bairro_sicronizado` varchar(100) DEFAULT NULL,
  `complemento_sicronizado` varchar(100) DEFAULT NULL,
  `cidade_sicronizado` varchar(100) DEFAULT NULL,
  `estado_sicronizado` varchar(100) DEFAULT NULL,
  `venda_sicronizado` varchar(50) DEFAULT NULL,
  `parcela_sicronizado` varchar(50) DEFAULT NULL,
  `status_sicronizado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_sicronizado`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

/*Table structure for table `botao` */

CREATE TABLE `botao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `situacao` int NOT NULL,
  `nome_botao` varchar(200) NOT NULL,
  `relatorio` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `ci_sessions` */

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `cliente_fatura_simples` */

CREATE TABLE `cliente_fatura_simples` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CLIE_Id` int NOT NULL,
  `fatura_simples_cliente_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3485 DEFAULT CHARSET=latin1;

/*Table structure for table `configs_extrato_fluxocaixa` */

CREATE TABLE `configs_extrato_fluxocaixa` (
  `id_usuario` int NOT NULL,
  `tipo_config` int NOT NULL DEFAULT '1',
  `valor` text,
  UNIQUE KEY `id_UNIQUE` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `conta_bancaria` */

CREATE TABLE `conta_bancaria` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'n',
  `nome_cedente` varchar(50) DEFAULT NULL COMMENT 'n',
  `endereco_cedente` varchar(70) DEFAULT NULL COMMENT 'n',
  `cidade_cedente` int DEFAULT NULL COMMENT 'n',
  `bairro_cedente` varchar(30) DEFAULT NULL COMMENT 'n',
  `estado_cedente` varchar(2) DEFAULT NULL COMMENT 'n',
  `cep_cedente` varchar(9) DEFAULT NULL COMMENT 'n',
  `cnpj_cedente` varchar(20) DEFAULT NULL COMMENT 'n',
  `email_cedente` varchar(50) DEFAULT NULL,
  `inscricao_estadual_cedente` varchar(20) DEFAULT NULL COMMENT 'n',
  `email_agencia` varchar(50) DEFAULT NULL,
  `codigo_agencia` varchar(10) DEFAULT NULL COMMENT 'n',
  `tipo_conta` enum('FÍSICA','JURÍDICA') DEFAULT NULL COMMENT '1 FÍSICA 2 JURÍDICA',
  `numero_conta` varchar(20) DEFAULT NULL COMMENT 'n',
  `digito_conta` varchar(1) DEFAULT NULL COMMENT 'n',
  `operacao_banco` varchar(5) DEFAULT NULL COMMENT 'n',
  `tab_banco_id` int DEFAULT NULL COMMENT 'n',
  `conta_apelido` varchar(255) DEFAULT NULL,
  `BANC_Codigo` varchar(4) DEFAULT NULL COMMENT 'n',
  `visivel` int DEFAULT '1' COMMENT 'n',
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'n',
  `complemento_cedente` varchar(50) DEFAULT NULL COMMENT 'n',
  `numero_endereco_cedente` varchar(10) DEFAULT NULL COMMENT 'n',
  `telefone_agencia` varchar(15) DEFAULT NULL,
  `contato_agencia` varchar(50) DEFAULT NULL,
  `cheque_especial` float(19,2) DEFAULT '0.00',
  `saldo_inicial` float(19,2) DEFAULT '0.00',
  `conta_descricao` varchar(50) DEFAULT NULL,
  `numero_cheque` bigint DEFAULT NULL,
  `numero_deposito` bigint DEFAULT NULL,
  `numero_recibo` bigint DEFAULT NULL,
  `numero_pagamento` bigint DEFAULT NULL,
  `plano_contas` varchar(20) DEFAULT NULL,
  `exibir_fluxo_caixa` varchar(10) DEFAULT NULL,
  `plano_contas_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `TABEBANC_PrimaryKey` (`BANC_Codigo`),
  KEY `tab_banc_id` (`tab_banco_id`),
  KEY `conta_bancaria_ibfk_2` (`plano_contas_id`),
  CONSTRAINT `conta_bancaria_ibfk_1` FOREIGN KEY (`tab_banco_id`) REFERENCES `tab_banco` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `conta_boleto` */

CREATE TABLE `conta_boleto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conta_bancaria_id` int DEFAULT NULL,
  `codigo_convenio` varchar(20) DEFAULT NULL,
  `numero_sequencial` int DEFAULT NULL,
  `identificacao_fita` varchar(50) DEFAULT NULL,
  `carteira` varchar(6) DEFAULT NULL,
  `instrucao_boleto` text,
  `tipo_convenio` varchar(1) DEFAULT NULL,
  `layout_boleto` enum('REGISTRADO') DEFAULT NULL,
  `local_pagamento` varchar(70) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `visivel` int DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `conta_bancaria_id` (`conta_bancaria_id`),
  CONSTRAINT `conta_boleto_ibfk_1` FOREIGN KEY (`conta_bancaria_id`) REFERENCES `conta_bancaria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `contabilidade` */

CREATE TABLE `contabilidade` (
  `id` int(10) unsigned zerofill DEFAULT NULL,
  `sequencia_lote` int(5) unsigned zerofill DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `documento` */

CREATE TABLE `documento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `diretorio` varchar(255) DEFAULT NULL,
  `extensao` varchar(5) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11121 DEFAULT CHARSET=latin1;

/*Table structure for table `documento_cliente` */

CREATE TABLE `documento_cliente` (
  `cliente_id` int DEFAULT NULL,
  `documento_id` int DEFAULT NULL,
  KEY `cliente_id` (`cliente_id`),
  KEY `documento_id` (`documento_id`),
  CONSTRAINT `documento_cliente_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `acrwclie` (`CLIE_Id`) ON DELETE CASCADE,
  CONSTRAINT `documento_cliente_ibfk_2` FOREIGN KEY (`documento_id`) REFERENCES `documento` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `documento_contas_pagar` */

CREATE TABLE `documento_contas_pagar` (
  `documento_id` int DEFAULT NULL,
  `conta_id` int DEFAULT NULL,
  KEY `conta_id` (`conta_id`),
  KEY `documento_id` (`documento_id`),
  CONSTRAINT `documento_contas_pagar_ibfk_1` FOREIGN KEY (`documento_id`) REFERENCES `documento` (`id`) ON DELETE CASCADE,
  CONSTRAINT `documento_contas_pagar_ibfk_2` FOREIGN KEY (`conta_id`) REFERENCES `acpwentr` (`ENTR_Id`) ON DELETE CASCADE,
  CONSTRAINT `documento_contas_pagar_ibfk_3` FOREIGN KEY (`documento_id`) REFERENCES `documento` (`id`) ON DELETE CASCADE,
  CONSTRAINT `documento_contas_pagar_ibfk_4` FOREIGN KEY (`conta_id`) REFERENCES `acpwentr` (`ENTR_Id`) ON DELETE CASCADE,
  CONSTRAINT `documento_contas_pagar_ibfk_5` FOREIGN KEY (`documento_id`) REFERENCES `documento` (`id`) ON DELETE CASCADE,
  CONSTRAINT `documento_contas_pagar_ibfk_6` FOREIGN KEY (`conta_id`) REFERENCES `acpwentr` (`ENTR_Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `documento_contas_receber` */

CREATE TABLE `documento_contas_receber` (
  `documento_id` int DEFAULT NULL,
  `conta_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `documento_movimento` */

CREATE TABLE `documento_movimento` (
  `documento_id` int DEFAULT NULL,
  `movimento_id` int DEFAULT NULL,
  KEY `documento_id` (`documento_id`),
  KEY `movimento_id` (`movimento_id`),
  CONSTRAINT `documento_movimento_ibfk_1` FOREIGN KEY (`documento_id`) REFERENCES `documento` (`id`) ON DELETE CASCADE,
  CONSTRAINT `documento_movimento_ibfk_2` FOREIGN KEY (`movimento_id`) REFERENCES `movimento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `log` */

CREATE TABLE `log` (
  `Log_Id` int NOT NULL AUTO_INCREMENT,
  `Log_Usuario` int DEFAULT NULL,
  `Log_Data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Log_Operacao` varchar(200) DEFAULT NULL,
  `Log_IdRegistro` int DEFAULT NULL,
  `Log_DadosRegistro` text,
  `Log_Cliente` varchar(25) DEFAULT NULL,
  `Log_Sistema` varchar(20) DEFAULT NULL,
  `Log_DadosAdicionais` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Log_Id`),
  KEY `fk_Log_Usuario` (`Log_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=28851 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `log_boletos` */

CREATE TABLE `log_boletos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `nome_cliente` varchar(255) DEFAULT NULL,
  `dados` varchar(255) DEFAULT NULL,
  `data_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1334 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `modulos` */

CREATE TABLE `modulos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `modulo` varchar(50) NOT NULL,
  `situacao` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Table structure for table `movimento` */

CREATE TABLE `movimento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conta_bancaria_id` int DEFAULT NULL COMMENT 'VERIFICAR',
  `BANC_Codigo` int DEFAULT NULL COMMENT 'VERIFICAR',
  `tipo` enum('PAGAMENTO','CHEQUE','RECIBO','DEPÓSITO') DEFAULT NULL,
  `numero_documento` varchar(15) DEFAULT NULL,
  `data_lancamento` timestamp NULL DEFAULT NULL,
  `data_original` timestamp NULL DEFAULT NULL,
  `pendente` tinyint(1) DEFAULT '1',
  `data_liberacao_pendencia` timestamp NULL DEFAULT NULL,
  `fornecedor` varchar(50) DEFAULT NULL,
  `observacoes` text,
  `codigo_adiantamento` varchar(5) DEFAULT NULL,
  `copia_impressa` tinyint(1) DEFAULT '0',
  `cheque_nome` varchar(50) DEFAULT NULL,
  `cheque_portador` tinyint(1) DEFAULT NULL,
  `cheque_cruzado` tinyint(1) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `valor` decimal(19,2) DEFAULT NULL,
  `LANC_Codigo` int DEFAULT NULL COMMENT 'VERIFICAR',
  `MOVI_AltAposImport` int DEFAULT NULL COMMENT 'VERIFICAR',
  `MOVI_NumDocConselhoFiscal` int DEFAULT NULL COMMENT 'VERIFICAR',
  `MOVI_ReferenciaBanco` int DEFAULT NULL COMMENT 'VERIFICAR',
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `visivel` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11255 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `movimento_centro_custo` */

CREATE TABLE `movimento_centro_custo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movimento_id` int NOT NULL,
  `centro_custo_id` int NOT NULL,
  `valor` decimal(19,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `movimento_id` (`movimento_id`),
  CONSTRAINT `movimento_centro_custo_ibfk_1` FOREIGN KEY (`movimento_id`) REFERENCES `movimento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `movimento_historico` */

CREATE TABLE `movimento_historico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movimento_id` int NOT NULL,
  `historico_codigo` int NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `valor` decimal(19,2) NOT NULL,
  `plano_contas` varchar(20) DEFAULT NULL,
  `visivel` int NOT NULL DEFAULT '1',
  `plano_contas_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movimento_id` (`movimento_id`),
  KEY `movimento_historico_ibfk_2` (`plano_contas_id`),
  CONSTRAINT `movimento_historico_ibfk_1` FOREIGN KEY (`movimento_id`) REFERENCES `movimento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25106 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `movimento_ofx` */

CREATE TABLE `movimento_ofx` (
  `ofx_id` int NOT NULL AUTO_INCREMENT,
  `conta_id` int NOT NULL,
  `tipo_transacao` varchar(50) NOT NULL,
  `data_transacao` datetime NOT NULL,
  `valor` decimal(19,2) NOT NULL,
  `codigo_transacao` varchar(50) NOT NULL,
  `protocolo_transacao` varchar(50) NOT NULL,
  `codigo_referencia` varchar(50) NOT NULL,
  `historico` varchar(255) NOT NULL,
  `plano_contas_id` int DEFAULT NULL,
  `plano_contas` varchar(20) DEFAULT NULL,
  `historico_codigo` int NOT NULL,
  `centro_custo` varchar(255) DEFAULT NULL,
  `info_anexos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ofx_id`)
) ENGINE=InnoDB AUTO_INCREMENT=550 DEFAULT CHARSET=latin1;

/*Table structure for table `movimento_transferencia` */

CREATE TABLE `movimento_transferencia` (
  `origem_id` int NOT NULL,
  `destino_id` int NOT NULL,
  PRIMARY KEY (`origem_id`,`destino_id`),
  KEY `destino_id` (`destino_id`),
  CONSTRAINT `movimento_transferencia_ibfk_1` FOREIGN KEY (`origem_id`) REFERENCES `movimento` (`id`),
  CONSTRAINT `movimento_transferencia_ibfk_2` FOREIGN KEY (`destino_id`) REFERENCES `movimento` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `movimentohistorico_contas` */

CREATE TABLE `movimentohistorico_contas` (
  `historico_codigo` int NOT NULL,
  `contas_id` int NOT NULL,
  `baixa_id` int NOT NULL,
  `tipo_conta` varchar(15) DEFAULT NULL,
  KEY `contas_id` (`contas_id`),
  KEY `movimentohistorico_contas_ibfk_1` (`historico_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `notafiscal` */

CREATE TABLE `notafiscal` (
  `NF_id` int unsigned NOT NULL AUTO_INCREMENT,
  `NF_numero_rps` int DEFAULT NULL,
  `NF_serie_rps` varchar(10) DEFAULT NULL,
  `NF_tipo_rps` tinyint DEFAULT NULL,
  `NF_data_emissao` datetime NOT NULL,
  `NF_natureza_operacao` varchar(5) NOT NULL,
  `NF_optante_simples` tinyint NOT NULL,
  `NF_incent_cultural` tinyint NOT NULL,
  `NF_valor_servico` decimal(15,2) NOT NULL,
  `NF_valor_deducoes` decimal(15,2) NOT NULL,
  `NF_valor_pis` decimal(15,2) NOT NULL,
  `NF_valor_cofins` decimal(15,2) NOT NULL,
  `NF_valor_inss` decimal(15,2) NOT NULL,
  `NF_valor_ir` decimal(15,2) NOT NULL,
  `NF_valor_csll` decimal(15,2) NOT NULL,
  `NF_iss_retido` tinyint(1) NOT NULL,
  `NF_aliquota` decimal(5,2) NOT NULL,
  `NF_item_servico` varchar(5) NOT NULL,
  `NF_cod_trib_municipal` varchar(9) NOT NULL,
  `NF_descricao` varchar(1000) NOT NULL,
  `NF_prestador` varchar(10) NOT NULL,
  `NF_tomador` int NOT NULL,
  `NF_tipo_tomador` varchar(10) NOT NULL,
  `NF_status_nota` varchar(20) NOT NULL,
  `NF_numero_nfe` varchar(5) DEFAULT NULL,
  `NF_link_nfe` varchar(200) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `visivel` tinyint(1) NOT NULL,
  PRIMARY KEY (`NF_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Table structure for table `parametros` */

CREATE TABLE `parametros` (
  `Parametros_Titulo` varchar(100) DEFAULT NULL,
  `Parametros_Chave` varchar(100) DEFAULT NULL,
  `Parametros_Valor` text,
  `Parametros_Visivel` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `parametrosforms` */

CREATE TABLE `parametrosforms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo_campo` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  `subMenu_id` int DEFAULT NULL,
  `padrao` varchar(255) DEFAULT NULL,
  `atual` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=679 DEFAULT CHARSET=latin1;

/*Table structure for table `parametrosgrid` */

CREATE TABLE `parametrosgrid` (
  `grid` varchar(60) DEFAULT NULL,
  `campo0` varchar(60) DEFAULT NULL,
  `campo1` varchar(60) DEFAULT NULL,
  `campo2` varchar(60) DEFAULT NULL,
  `campo3` varchar(60) DEFAULT NULL,
  `campo4` varchar(60) DEFAULT NULL,
  `atributo` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `perfil` */

CREATE TABLE `perfil` (
  `perfil_id` int DEFAULT NULL,
  `perfil_nome` varchar(750) DEFAULT NULL,
  `perfil_visivel` int DEFAULT NULL,
  `perfil_atualizacao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `plano_contas` */

CREATE TABLE `plano_contas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `classificacao` varchar(20) DEFAULT NULL,
  `reduzida` varchar(9) DEFAULT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  `tipo` varchar(5) DEFAULT NULL,
  `grau_plano` varchar(9) DEFAULT NULL,
  `natureza` char(1) DEFAULT NULL,
  `saldo` varchar(9) DEFAULT NULL,
  `sinal` char(1) DEFAULT NULL,
  `plano_referencial` varchar(50) DEFAULT NULL,
  `visivel` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PLAN_Reduzida` (`reduzida`),
  KEY `PLAN_DataAtu` (`saldo`),
  KEY `PLAN_Descricao` (`descricao`)
) ENGINE=InnoDB AUTO_INCREMENT=13468 DEFAULT CHARSET=latin1;

/*Table structure for table `plano_contas_copy` */

CREATE TABLE `plano_contas_copy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `classificacao` varchar(20) DEFAULT NULL,
  `reduzida` varchar(9) DEFAULT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  `tipo` varchar(5) DEFAULT NULL,
  `grau_plano` varchar(9) DEFAULT NULL,
  `natureza` char(1) DEFAULT NULL,
  `saldo` varchar(9) DEFAULT NULL,
  `sinal` char(1) DEFAULT NULL,
  `plano_referencial` varchar(50) DEFAULT NULL,
  `visivel` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PLAN_Codigo` (`classificacao`),
  KEY `PLAN_DataAtu` (`saldo`),
  KEY `PLAN_Descricao` (`descricao`)
) ENGINE=InnoDB AUTO_INCREMENT=540 DEFAULT CHARSET=latin1;

/*Table structure for table `saldos_contas` */

CREATE TABLE `saldos_contas` (
  `conta_bancaria_id` int NOT NULL,
  `SALD_Ano` varchar(4) NOT NULL,
  `SALD_Mes` varchar(2) NOT NULL,
  `SALD_DebitoMes` decimal(19,4) DEFAULT NULL,
  `SALD_CreditoMes` decimal(19,4) DEFAULT NULL,
  `SALD_DebPendentes` decimal(19,4) DEFAULT NULL,
  `SALD_CredPendentes` decimal(19,4) DEFAULT NULL,
  `SALD_MesAnterior` decimal(19,4) DEFAULT NULL,
  `SALD_Conciliado` varchar(1) DEFAULT NULL,
  `SALD_Diferenca` decimal(19,4) DEFAULT NULL,
  `SALD_Real` decimal(19,4) DEFAULT NULL,
  `SALD_NoBanco` decimal(19,4) DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `BISAUSUA_Sequencial` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`conta_bancaria_id`,`SALD_Ano`,`SALD_Mes`),
  UNIQUE KEY `ACBWSALD_PrimaryKey` (`conta_bancaria_id`,`SALD_Ano`,`SALD_Mes`),
  KEY `ACBWSALD_DataDesc` (`conta_bancaria_id`,`SALD_Ano`,`SALD_Mes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `secoes_filiais_delegacias` */

CREATE TABLE `secoes_filiais_delegacias` (
  `SECOES_Id` int NOT NULL AUTO_INCREMENT,
  `SECOES_CLIE_Id` int NOT NULL COMMENT 'ID cliente',
  `SECOES_Codigo` varchar(10) DEFAULT NULL,
  `SECOES_Nome` varchar(255) DEFAULT NULL,
  `SECOES_Endereco` varchar(50) DEFAULT NULL,
  `SECOES_Bairro` varchar(20) DEFAULT NULL,
  `SECOES_Cidade` varchar(50) DEFAULT NULL,
  `SECOES_Estado` varchar(10) DEFAULT NULL,
  `SECOES_CEP` varchar(8) DEFAULT NULL,
  `SECOES_Observacao` varchar(255) DEFAULT NULL,
  `SECOES_Contato` varchar(50) DEFAULT NULL,
  `SECOES_Email` varchar(50) DEFAULT NULL,
  `SECOES_HomePage` varchar(50) DEFAULT NULL,
  `SECOES_FoneContato` varchar(12) DEFAULT NULL,
  `SECOES_FoneContato2` varchar(12) DEFAULT NULL,
  `SECOES_FoneCelular` varchar(12) DEFAULT NULL,
  `SECOES_Diretoria` varchar(50) DEFAULT NULL,
  `SECOES_Presidente` varchar(50) DEFAULT NULL,
  `SECOES_Visivel` int DEFAULT NULL,
  `BISAUSUA_Sequencial` int DEFAULT NULL,
  `BISAUSUA_LastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data para registro Log (Segurança)',
  PRIMARY KEY (`SECOES_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `servicos` */

CREATE TABLE `servicos` (
  `cod_servico` varchar(27) DEFAULT NULL,
  `desc_servico` varchar(435) DEFAULT NULL,
  `cod_atividade` varchar(1293) DEFAULT NULL,
  `desc_atividade` varchar(1335) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tab_banco` */

CREATE TABLE `tab_banco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `nome_curto` varchar(100) DEFAULT NULL,
  `codigo_compensacao` varchar(3) DEFAULT NULL,
  `homepage` varchar(100) DEFAULT NULL,
  `login_homebank` varchar(50) DEFAULT NULL,
  `senha_homebank` varchar(30) DEFAULT NULL,
  `anotacoes_homebank` varchar(255) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `visivel` int DEFAULT '1',
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `tabeativ` */

CREATE TABLE `tabeativ` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ATIV_Codigo` varchar(4) DEFAULT NULL,
  `ATIV_Valor` decimal(19,4) DEFAULT NULL,
  `ATIV_Descricao` varchar(40) DEFAULT NULL,
  `visivel` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `TABEATIV_PrimaryKey` (`ATIV_Codigo`),
  KEY `TABEATIV_Descricao` (`ATIV_Descricao`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `tabebanc` */

CREATE TABLE `tabebanc` (
  `BANC_Codigo` varchar(4) DEFAULT NULL,
  `BANC_RazaoSocial` varchar(50) DEFAULT NULL,
  `BANC_NomeCurto` varchar(15) DEFAULT NULL,
  `BANC_CodigoConvenio` varchar(20) DEFAULT NULL,
  `BANC_NomeCedente` varchar(50) DEFAULT NULL,
  `BANC_EndCedente` varchar(70) DEFAULT NULL,
  `BANC_CidCedente` varchar(30) DEFAULT NULL,
  `BANC_BaiCedente` varchar(30) DEFAULT NULL,
  `BANC_EstCedente` varchar(30) DEFAULT NULL,
  `BANC_CepCedente` varchar(8) DEFAULT NULL,
  `BANC_TelCedente` varchar(20) DEFAULT NULL,
  `BANC_CNPJCedente` varchar(14) DEFAULT NULL,
  `BANC_InsEstCedente` varchar(20) DEFAULT NULL,
  `BANC_EmailCedente` varchar(50) DEFAULT NULL,
  `BANC_LocalPag` varchar(70) DEFAULT NULL,
  `BANC_CodigoBanco` varchar(3) DEFAULT NULL,
  `BANC_CodCedentenoCodBarra` varchar(10) DEFAULT NULL,
  `BANC_NumeroSequencial` int DEFAULT NULL,
  `BANC_IdentificacaoFita` int DEFAULT NULL,
  `BANC_CodigoAgencia` varchar(10) DEFAULT NULL,
  `BANC_Carteira` varchar(6) DEFAULT NULL,
  `BANC_QtdNumCarteira` int DEFAULT NULL,
  `BANC_TipoConta` varchar(2) DEFAULT NULL,
  `BANC_NumContaConvenio` varchar(20) DEFAULT NULL,
  `BANC_DigVerifContaConvenio` varchar(1) DEFAULT NULL,
  `BANC_QtdNumConvenio` int DEFAULT NULL,
  `BANC_CNABMsg1` int DEFAULT NULL,
  `BANC_CNABMsg2` int DEFAULT NULL,
  `BANC_CNABMensagem` varchar(40) DEFAULT NULL,
  `BANC_InstRodape` text,
  `BANC_TipoConvenio` varchar(1) DEFAULT NULL,
  `BANC_OperacaoBanco` varchar(20) DEFAULT NULL,
  `BANC_LeiautArqRetorno` varchar(2) DEFAULT NULL,
  `BANC_LeiautBoletas` smallint DEFAULT NULL,
  `BANC_CodMovRemessa` varchar(2) DEFAULT NULL,
  `BANC_CarteiraRemessa` varchar(1) DEFAULT NULL,
  `BANC_EmiteBoletoRemessa` varchar(1) DEFAULT NULL,
  `BANC_EspecieTitRemessa` varchar(2) DEFAULT NULL,
  `BANC_MoraRemessa` varchar(1) DEFAULT NULL,
  `BANC_CodDescontoRemessa` varchar(1) DEFAULT NULL,
  `BANC_DataDescontoRemessa` timestamp(6) NULL DEFAULT NULL,
  `BANC_ValPercDescRemessa` double(24,2) DEFAULT NULL,
  `BANC_CodProtestoRemessa` varchar(1) DEFAULT NULL,
  `BANC_BaixaDevRemessa` varchar(1) DEFAULT NULL,
  `BANC_DiasCorridosRemessa` double(24,2) DEFAULT NULL,
  `BANC_DiasProtestoRemessa` double(24,2) DEFAULT NULL,
  `BANC_DatajurosMoraRemessa` timestamp(6) NULL DEFAULT NULL,
  `BANC_TaxaJurosRemessa` double(24,2) DEFAULT NULL,
  `BANC_ValorIOFRemessa` double(24,2) DEFAULT NULL,
  `BANC_ValAbatimentoRemessa` double(24,2) DEFAULT NULL,
  `BANC_SequencialRemessa` int DEFAULT NULL,
  `BANC_Logo` longblob,
  UNIQUE KEY `TABEBANC_PrimaryKey` (`BANC_Codigo`),
  KEY `TABEBANC_NomeCurto` (`BANC_NomeCurto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `tabeccus` */

CREATE TABLE `tabeccus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CCUS_Codigo` varchar(20) DEFAULT NULL,
  `CCUS_Nome` varchar(40) DEFAULT NULL,
  `visivel` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `TABECCUS_PrimaryKey` (`CCUS_Codigo`),
  KEY `TABECCUS_Nome` (`CCUS_Nome`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `tabecidades` */

CREATE TABLE `tabecidades` (
  `id` int NOT NULL,
  `estado` int DEFAULT NULL,
  `uf` varchar(30) DEFAULT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `cod_ibge` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `estado` (`estado`),
  KEY `uf` (`uf`),
  CONSTRAINT `tabecidades_ibfk_1` FOREIGN KEY (`uf`) REFERENCES `tabeestados` (`uf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tabecota` */

CREATE TABLE `tabecota` (
  `COTA_Id` int NOT NULL AUTO_INCREMENT,
  `MOED_Id` varchar(5) DEFAULT NULL,
  `COTA_DataCotacao` date DEFAULT NULL,
  `COTA_ValorCotacao` double(24,2) DEFAULT NULL,
  PRIMARY KEY (`COTA_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `tabeestados` */

CREATE TABLE `tabeestados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uf` varchar(30) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `cod_ibge` int DEFAULT NULL,
  PRIMARY KEY (`uf`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Table structure for table `tabegrhs` */

CREATE TABLE `tabegrhs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `GRHS_Codigo` varchar(3) DEFAULT NULL,
  `GRHS_Descricao` varchar(40) DEFAULT NULL,
  `visivel` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `TABEGRHS_PrimaryKey` (`GRHS_Codigo`),
  KEY `TABEGRHS_Descricao` (`GRHS_Descricao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `tabehist` */

CREATE TABLE `tabehist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `HIST_Codigo` varchar(3) DEFAULT NULL,
  `HIST_Descricao` varchar(40) DEFAULT NULL,
  `HIST_NumComplementos` smallint DEFAULT NULL,
  `HIST_CustoFixo` varchar(1) DEFAULT NULL,
  `HIST_PLAN_Codigo` smallint DEFAULT NULL,
  `GRHS_Codigo` varchar(3) DEFAULT NULL,
  `tab_grupo_historico_id` int DEFAULT NULL,
  `visivel` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `TABEHIST_PrimaryKey` (`HIST_Codigo`),
  KEY `TABEHIST_Descricao` (`HIST_Descricao`),
  KEY `TABEHIST_GRHSCodigo` (`GRHS_Codigo`),
  KEY `tab_grupo_historico_id` (`tab_grupo_historico_id`),
  CONSTRAINT `tabehist_ibfk_1` FOREIGN KEY (`tab_grupo_historico_id`) REFERENCES `tabegrhs` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=338 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `tabemoed` */

CREATE TABLE `tabemoed` (
  `MOED_Id` int NOT NULL AUTO_INCREMENT,
  `MOED_Codigo` varchar(5) DEFAULT NULL,
  `MOED_Nome` varchar(40) DEFAULT NULL,
  `MOED_PeriodoCotacao` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`MOED_Id`),
  UNIQUE KEY `TABEMOED_PrimaryKey` (`MOED_Codigo`),
  KEY `TABEMOED_Nome` (`MOED_Nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `tabeperpgt` */

CREATE TABLE `tabeperpgt` (
  `PER_COD` char(1) NOT NULL,
  `PER_DESC` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PER_COD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tabetipojur` */

CREATE TABLE `tabetipojur` (
  `TIPOJUR_COD` int NOT NULL AUTO_INCREMENT,
  `TIPOJUR_DESC` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TIPOJUR_COD`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `transferencia` */

CREATE TABLE `transferencia` (
  `origem_id` int NOT NULL,
  `destino_id` int NOT NULL,
  PRIMARY KEY (`origem_id`,`destino_id`),
  KEY `destino_id` (`destino_id`),
  CONSTRAINT `transferencia_ibfk_1` FOREIGN KEY (`origem_id`) REFERENCES `movimento` (`id`),
  CONSTRAINT `transferencia_ibfk_2` FOREIGN KEY (`destino_id`) REFERENCES `movimento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* Trigger structure for table `acpwforn` */

DELIMITER $$

/*!50003 CREATE */ /*!50017 DEFINER = 'monetaweb_user'@'%' */ /*!50003 TRIGGER `excluir_fornecedores` AFTER UPDATE ON `acpwforn` FOR EACH ROW BEGIN
    DECLARE acao INT;
    
    SET @acao := (SELECT acpwforn.`FORN_Visivel` FROM acpwforn WHERE acpwforn.`FORN_Id` = NEW.FORN_Id);
    
    IF @acao = 0 THEN
	UPDATE acpwentr SET ENTR_Visivel = 0 WHERE FORN_Id = NEW.FORN_Id;
    END IF;
    END */$$


DELIMITER ;

/* Trigger structure for table `acrwclie` */

DELIMITER $$

/*!50003 CREATE */ /*!50017 DEFINER = 'monetaweb_user'@'%' */ /*!50003 TRIGGER `excluir_clientes` AFTER UPDATE ON `acrwclie` FOR EACH ROW BEGIN
    declare acao int;
    
    set @acao := (SELECT acrwclie.`CLIE_Visivel` FROM acrwclie WHERE acrwclie.`CLIE_Id` = NEW.CLIE_Id);
    
    if @acao = 0 then
	update `acrwentr` set `acrwentr`.`ENTR_Visivel` = 0 where acrwentr.`CLIE_Id` = NEW.CLIE_Id;
    end if;
    END */$$


DELIMITER ;

/* Trigger structure for table `acrwtpcr` */

DELIMITER $$

/*!50003 CREATE */ /*!50017 DEFINER = 'monetaweb_user'@'%' */ /*!50003 TRIGGER `excluir_tipocredito` AFTER UPDATE ON `acrwtpcr` FOR EACH ROW BEGIN
    DECLARE acao INT;
    
    SET @acao := (SELECT acrwtpcr.`TPCR_Visivel` FROM acrwtpcr WHERE acrwtpcr.`TPCR_Codigo` = NEW.TPCR_Codigo);
      IF @acao = 0 THEN
    UPDATE `acrwentr` SET `acrwentr`.`ENTR_Visivel` = 0 WHERE `acrwentr`.`TPCR_Codigo` = NEW.TPCR_Codigo;
    END IF;
    END */$$


DELIMITER ;

/* Trigger structure for table `conta_bancaria` */

DELIMITER $$

/*!50003 CREATE */ /*!50017 DEFINER = 'monetaweb_user'@'%' */ /*!50003 TRIGGER `excluir_contabancaria` AFTER UPDATE ON `conta_bancaria` FOR EACH ROW BEGIN
	DECLARE acao INT;
	DECLARE mov_id INT(11);
	
	SET @acao := (SELECT conta_bancaria.`visivel` FROM conta_bancaria
	WHERE id = NEW.id);
	
	IF @acao = 0 THEN
		UPDATE movimento SET movimento.`visivel` = 0
		WHERE conta_bancaria_id = NEW.id;
		
		UPDATE movimento_historico SET movimento_historico.`visivel` = 0
		WHERE movimento_id IN (SELECT movimento.id FROM movimento
		WHERE movimento.conta_bancaria_id = NEW.id);
		
	END IF;			
    END */$$


DELIMITER ;

/*Table structure for table `contasapagaravencer` */

DROP TABLE IF EXISTS `contasapagaravencer`;

/*!50001 CREATE TABLE  `contasapagaravencer`(
 `FORN_Nome` varchar(50) ,
 `ENTR_Id` int ,
 `FORN_Codigo` int ,
 `ENTR_NumTitulo` varchar(15) ,
 `ENTR_Parcela` varchar(2) ,
 `CCUS_Codigo` varchar(10) ,
 `HIST_Codigo` varchar(3) ,
 `ENTR_ComplHist` varchar(255) ,
 `ENTR_DataEmissao` timestamp ,
 `ENTR_Vencimento` timestamp ,
 `MOED_Codigo` varchar(5) ,
 `ENTR_ValorMoeda` decimal(19,2) ,
 `ENTR_PercMulta` decimal(19,4) ,
 `ENTR_TipoJuros` int ,
 `ENTR_Juros` decimal(19,4) ,
 `ENTR_PercDesconto` decimal(19,4) ,
 `ENTR_Previsao` varchar(5) ,
 `ENTR_Prioridade` double(24,2) ,
 `BISAUSUA_LastUpdate` timestamp(6) ,
 `BISAUSUA_Sequencial` varchar(3) ,
 `ENTR_Situacao` varchar(1) ,
 `ENTR_Visivel` int ,
 `ENTR_TipoConta` int ,
 `ENTR_TipoDesconto` int ,
 `Estado` varchar(7) 
)*/;

/*Table structure for table `contasapagarpagas` */

DROP TABLE IF EXISTS `contasapagarpagas`;

/*!50001 CREATE TABLE  `contasapagarpagas`(
 `FORN_Nome` varchar(50) ,
 `ENTR_Id` int ,
 `FORN_Codigo` int ,
 `ENTR_NumTitulo` varchar(15) ,
 `ENTR_Parcela` varchar(2) ,
 `CCUS_Codigo` varchar(10) ,
 `HIST_Codigo` varchar(3) ,
 `ENTR_ComplHist` varchar(255) ,
 `ENTR_DataEmissao` timestamp ,
 `ENTR_Vencimento` timestamp ,
 `MOED_Codigo` varchar(5) ,
 `ENTR_ValorMoeda` decimal(19,2) ,
 `ENTR_PercMulta` decimal(19,4) ,
 `ENTR_TipoJuros` int ,
 `ENTR_Juros` decimal(19,4) ,
 `ENTR_PercDesconto` decimal(19,4) ,
 `ENTR_Previsao` varchar(5) ,
 `ENTR_Prioridade` double(24,2) ,
 `BISAUSUA_LastUpdate` timestamp(6) ,
 `BISAUSUA_Sequencial` varchar(3) ,
 `ENTR_Situacao` varchar(1) ,
 `ENTR_Visivel` int ,
 `ENTR_TipoConta` int ,
 `ENTR_TipoDesconto` int ,
 `Estado` varchar(7) 
)*/;

/*Table structure for table `contasapagartodas` */

DROP TABLE IF EXISTS `contasapagartodas`;

/*!50001 CREATE TABLE  `contasapagartodas`(
 `FORN_Nome` varchar(50) ,
 `ENTR_Id` int ,
 `FORN_Codigo` int ,
 `ENTR_NumTitulo` varchar(15) ,
 `ENTR_Parcela` varchar(2) ,
 `CCUS_Codigo` varchar(10) ,
 `HIST_Codigo` varchar(3) ,
 `ENTR_ComplHist` varchar(255) ,
 `ENTR_DataEmissao` timestamp ,
 `ENTR_Vencimento` timestamp ,
 `MOED_Codigo` varchar(5) ,
 `ENTR_ValorMoeda` decimal(19,2) ,
 `ENTR_PercMulta` decimal(19,4) ,
 `ENTR_TipoJuros` int ,
 `ENTR_Juros` decimal(19,4) ,
 `ENTR_PercDesconto` decimal(19,4) ,
 `ENTR_Previsao` varchar(5) ,
 `ENTR_Prioridade` double(24,2) ,
 `BISAUSUA_LastUpdate` timestamp(6) ,
 `BISAUSUA_Sequencial` varchar(3) ,
 `ENTR_Situacao` varchar(1) ,
 `ENTR_Visivel` int ,
 `ENTR_TipoConta` int ,
 `ENTR_TipoDesconto` int ,
 `Estado` varchar(7) 
)*/;

/*Table structure for table `contasapagarvencidas` */

DROP TABLE IF EXISTS `contasapagarvencidas`;

/*!50001 CREATE TABLE  `contasapagarvencidas`(
 `FORN_Nome` varchar(50) ,
 `ENTR_Id` int ,
 `FORN_Codigo` int ,
 `ENTR_NumTitulo` varchar(15) ,
 `ENTR_Parcela` varchar(2) ,
 `CCUS_Codigo` varchar(10) ,
 `HIST_Codigo` varchar(3) ,
 `ENTR_ComplHist` varchar(255) ,
 `ENTR_DataEmissao` timestamp ,
 `ENTR_Vencimento` timestamp ,
 `MOED_Codigo` varchar(5) ,
 `ENTR_ValorMoeda` decimal(19,2) ,
 `ENTR_PercMulta` decimal(19,4) ,
 `ENTR_TipoJuros` int ,
 `ENTR_Juros` decimal(19,4) ,
 `ENTR_PercDesconto` decimal(19,4) ,
 `ENTR_Previsao` varchar(5) ,
 `ENTR_Prioridade` double(24,2) ,
 `BISAUSUA_LastUpdate` timestamp(6) ,
 `BISAUSUA_Sequencial` varchar(3) ,
 `ENTR_Situacao` varchar(1) ,
 `ENTR_Visivel` int ,
 `ENTR_TipoConta` int ,
 `ENTR_TipoDesconto` int ,
 `Estado` varchar(7) 
)*/;

/*Table structure for table `contasareceberavencer` */

DROP TABLE IF EXISTS `contasareceberavencer`;

/*!50001 CREATE TABLE  `contasareceberavencer`(
 `CLIE_Nome` varchar(255) ,
 `ENTR_Id` int ,
 `CONT_Codigo` int ,
 `TPCR_Codigo` varchar(10) ,
 `ENTR_Ano` smallint ,
 `ENTR_Mes` smallint ,
 `ENTR_NumTitulo` varchar(35) ,
 `TABEBANC_Codigo` varchar(4) ,
 `ENTR_Parcela` varchar(2) ,
 `ENTR_LocalPagto` varchar(1) ,
 `ENTR_DataEmissao` timestamp ,
 `ENTR_Vencimento` timestamp ,
 `MOED_Codigo` varchar(5) ,
 `ENTR_ValorMoeda` decimal(19,2) ,
 `ENTR_ValorReal` decimal(19,2) ,
 `ENTR_CodGeracaoCredito` int ,
 `ENTR_Situacao` varchar(5) ,
 `BISAUSUA_LastUpdate` timestamp ,
 `BISAUSUA_Sequencial` varchar(3) ,
 `ENTR_TipoConta` int ,
 `ENTR_Visivel` int ,
 `CLIE_Id` int ,
 `CONT_Id` int ,
 `ENTR_TipoDesconto` int ,
 `Estado` varchar(7) 
)*/;

/*Table structure for table `contasareceberrecebidas` */

DROP TABLE IF EXISTS `contasareceberrecebidas`;

/*!50001 CREATE TABLE  `contasareceberrecebidas`(
 `CLIE_Nome` varchar(255) ,
 `ENTR_Id` int ,
 `CONT_Codigo` int ,
 `TPCR_Codigo` varchar(10) ,
 `ENTR_Ano` smallint ,
 `ENTR_Mes` smallint ,
 `ENTR_NumTitulo` varchar(35) ,
 `TABEBANC_Codigo` varchar(4) ,
 `ENTR_Parcela` varchar(2) ,
 `ENTR_LocalPagto` varchar(1) ,
 `ENTR_DataEmissao` timestamp ,
 `ENTR_Vencimento` timestamp ,
 `MOED_Codigo` varchar(5) ,
 `ENTR_ValorMoeda` decimal(19,2) ,
 `ENTR_ValorReal` decimal(19,2) ,
 `ENTR_CodGeracaoCredito` int ,
 `ENTR_Situacao` varchar(5) ,
 `BISAUSUA_LastUpdate` timestamp ,
 `BISAUSUA_Sequencial` varchar(3) ,
 `ENTR_TipoConta` int ,
 `ENTR_Visivel` int ,
 `CLIE_Id` int ,
 `CONT_Id` int ,
 `ENTR_TipoDesconto` int ,
 `Estado` varchar(7) 
)*/;

/*Table structure for table `contasarecebertodas` */

DROP TABLE IF EXISTS `contasarecebertodas`;

/*!50001 CREATE TABLE  `contasarecebertodas`(
 `CLIE_Nome` varchar(255) ,
 `ENTR_Id` int ,
 `CONT_Codigo` int ,
 `TPCR_Codigo` varchar(10) ,
 `ENTR_Ano` smallint ,
 `ENTR_Mes` smallint ,
 `ENTR_NumTitulo` varchar(35) ,
 `TABEBANC_Codigo` varchar(4) ,
 `ENTR_Parcela` varchar(2) ,
 `ENTR_LocalPagto` varchar(1) ,
 `ENTR_DataEmissao` timestamp ,
 `ENTR_Vencimento` timestamp ,
 `BAIX_DataBaixa` timestamp ,
 `BAIX_DataPagamento` timestamp ,
 `MOED_Codigo` varchar(5) ,
 `ENTR_ValorMoeda` decimal(19,2) ,
 `ENTR_ValorReal` decimal(19,2) ,
 `ENTR_CodGeracaoCredito` int ,
 `ENTR_Situacao` varchar(5) ,
 `BISAUSUA_LastUpdate` timestamp ,
 `BISAUSUA_Sequencial` varchar(3) ,
 `ENTR_TipoConta` int ,
 `ENTR_Visivel` int ,
 `CLIE_Id` int ,
 `CONT_Id` int ,
 `ENTR_TipoDesconto` int ,
 `Estado` varchar(7) 
)*/;

/*Table structure for table `contasarecebervencidas` */

DROP TABLE IF EXISTS `contasarecebervencidas`;

/*!50001 CREATE TABLE  `contasarecebervencidas`(
 `CLIE_Nome` varchar(255) ,
 `ENTR_Id` int ,
 `CONT_Codigo` int ,
 `TPCR_Codigo` varchar(10) ,
 `ENTR_Ano` smallint ,
 `ENTR_Mes` smallint ,
 `ENTR_NumTitulo` varchar(35) ,
 `TABEBANC_Codigo` varchar(4) ,
 `ENTR_Parcela` varchar(2) ,
 `ENTR_LocalPagto` varchar(1) ,
 `ENTR_DataEmissao` timestamp ,
 `ENTR_Vencimento` timestamp ,
 `MOED_Codigo` varchar(5) ,
 `ENTR_ValorMoeda` decimal(19,2) ,
 `ENTR_ValorReal` decimal(19,2) ,
 `ENTR_CodGeracaoCredito` int ,
 `ENTR_Situacao` varchar(5) ,
 `BISAUSUA_LastUpdate` timestamp ,
 `BISAUSUA_Sequencial` varchar(3) ,
 `ENTR_TipoConta` int ,
 `ENTR_Visivel` int ,
 `CLIE_Id` int ,
 `CONT_Id` int ,
 `ENTR_TipoDesconto` int ,
 `Estado` varchar(7) 
)*/;

/*Table structure for table `vw_acrwregistrador` */

DROP TABLE IF EXISTS `vw_acrwregistrador`;

/*!50001 CREATE TABLE  `vw_acrwregistrador`(
 `clie_codigo` varchar(10) ,
 `CLIE_FoneContato` varchar(14) ,
 `cont_codigo` varchar(5) ,
 `SIST_Codigo` varchar(3) ,
 `BISASIST_Descricao` varchar(40) ,
 `CLIE_Nome` varchar(255) ,
 `CLIE_Estado` varchar(30) ,
 `CLIE_CNPJ_CPF` varchar(18) ,
 `CLIE_Email` varchar(50) ,
 `CLIE_CodigoSIAPE` varchar(10) ,
 `CLIE_CodigoSIAPE2` varchar(10) ,
 `CLIE_NomeParaRelatorios` varchar(255) ,
 `CLIE_Sigla` varchar(50) ,
 `CLIE_Contato` varchar(50) ,
 `CLIE_Logomarca` longblob ,
 `CONT_PrazoCarencia` timestamp ,
 `CLIE_Site` varchar(255) ,
 `CLIE_CEP` varchar(8) ,
 `CLIE_Endereco` varchar(50) ,
 `CLIE_Numero` varchar(10) ,
 `CLIE_Complemento` varchar(50) ,
 `CLIE_Bairro` varchar(20) ,
 `CLIE_Cidade` int ,
 `CLIE_InscMunicipal` varchar(20) ,
 `CLIE_InscEstadual` varchar(20) ,
 `TPCL_Codigo` int ,
 `CLIE_Database` varchar(255) ,
 `Link_Filiados` varchar(150) ,
 `CLIE_Visivel` int ,
 `contasVencidas` bigint ,
 `CONT_Situacao` varchar(1) ,
 `REGISTRADOR_ULTIMA_ATUALIZACAO` datetime 
)*/;

/*Table structure for table `vw_acrwregistrador_2` */

DROP TABLE IF EXISTS `vw_acrwregistrador_2`;

/*!50001 CREATE TABLE  `vw_acrwregistrador_2`(
 `CLIE_Nome` varchar(255) ,
 `clie_codigo` varchar(10) ,
 `cont_codigo` varchar(5) ,
 `SIST_Codigo` varchar(3) ,
 `ENTR_Id` int ,
 `TPCR_Codigo` varchar(10) ,
 `ENTR_Ano` smallint ,
 `ENTR_Mes` smallint ,
 `ENTR_NumTitulo` varchar(35) ,
 `TABEBANC_Codigo` varchar(4) ,
 `ENTR_Parcela` varchar(2) ,
 `ENTR_LocalPagto` varchar(1) ,
 `ENTR_DataEmissao` varchar(10) ,
 `ENTR_Vencimento` varchar(10) ,
 `MOED_Codigo` varchar(5) ,
 `ENTR_ValorMoeda` decimal(19,2) ,
 `ENTR_ValorReal` decimal(19,2) ,
 `ENTR_CodGeracaoCredito` int ,
 `ENTR_Situacao` varchar(5) ,
 `BISAUSUA_LastUpdate` timestamp ,
 `BISAUSUA_Sequencial` varchar(3) ,
 `ENTR_TipoConta` int ,
 `ENTR_Visivel` int ,
 `CLIE_Id` int ,
 `CONT_Id` int ,
 `ENTR_TipoDesconto` int ,
 `Estado` varchar(7) 
)*/;

/*Table structure for table `vw_contasapagar` */

DROP TABLE IF EXISTS `vw_contasapagar`;

/*!50001 CREATE TABLE  `vw_contasapagar`(
 `baixas` decimal(41,2) ,
 `ENTR_Id` int ,
 `ENTR_TipoConta` int ,
 `FORN_Codigo` int ,
 `FORN_Nome` varchar(50) ,
 `ENTR_NumTitulo` varchar(15) ,
 `ENTR_Parcela` varchar(2) ,
 `HIST_Codigo` varchar(3) ,
 `HIST_Descricao` varchar(40) ,
 `ENTR_ComplHist` varchar(255) ,
 `ENTR_DataEmissao` date ,
 `ENTR_Venc` date ,
 `ENTR_PercMulta` decimal(19,4) ,
 `ENTR_TipoJuros` int ,
 `ENTR_Juros` decimal(19,4) ,
 `ENTR_PercDesconto` decimal(19,4) ,
 `ENTR_Prioridade` double(24,2) ,
 `ENTR_Situacao` varchar(1) ,
 `ENTR_TipoDesconto` int ,
 `ENTR_CCUS_Codigo` varchar(10) ,
 `ENTR_CCUS_Nome` varchar(40) ,
 `OutrosAcrescimos` decimal(19,4) ,
 `OutrosDescontos` decimal(19,4) ,
 `data_baixa` timestamp(6) ,
 `ENTR_ValorMoeda` decimal(42,2) 
)*/;

/*Table structure for table `vw_contaspagas` */

DROP TABLE IF EXISTS `vw_contaspagas`;

/*!50001 CREATE TABLE  `vw_contaspagas`(
 `ENTR_Id` int ,
 `VISIVEL` int ,
 `ENTR_TipoConta` int ,
 `FORN_Codigo` int ,
 `FORN_Nome` varchar(50) ,
 `ENTR_NumTitulo` varchar(15) ,
 `ENTR_Parcela` varchar(2) ,
 `ENTR_CCUS_Codigo` varchar(10) ,
 `HIST_Codigo` varchar(3) ,
 `HIST_Descricao` varchar(40) ,
 `ENTR_ComplHist` varchar(255) ,
 `BAIX_Id` int ,
 `CCUS_Codigo` varchar(20) ,
 `CCUS_Nome` varchar(40) ,
 `ENTR_DataEmissao` timestamp ,
 `ENTR_Venc` timestamp ,
 `BAIX_DataBaixa` timestamp(6) ,
 `ENTR_Situacao` varchar(1) ,
 `ENTR_ValorMoeda` decimal(19,2) ,
 `BAIX_ValorPagoReal` decimal(19,2) ,
 `ENTR_PercMulta` decimal(19,4) ,
 `BAIX_Multa` decimal(19,4) ,
 `ENTR_TipoJuros` int ,
 `ENTR_Juros` decimal(19,4) ,
 `BAIX_Juros` decimal(19,4) ,
 `ENTR_PercDesconto` decimal(19,4) ,
 `BAIX_Desconto` decimal(19,4) ,
 `BAIX_OutrosDescontos` decimal(19,4) ,
 `BAIX_OutrosAcrescimos` decimal(19,4) ,
 `SomaDasBaixas` decimal(19,2) 
)*/;

/*Table structure for table `vw_financeiro` */

DROP TABLE IF EXISTS `vw_financeiro`;

/*!50001 CREATE TABLE  `vw_financeiro`(
 `bancoNome` varchar(255) ,
 `contaApelido` varchar(255) ,
 `idConta` int ,
 `conta_bancaria_id` int ,
 `codigoHistorico` varchar(3) ,
 `descricaoHistorico` varchar(40) ,
 `grupoHistorico` varchar(40) ,
 `ano` int ,
 `Pendente` tinyint(1) ,
 `debitos1` decimal(41,2) ,
 `debitos2` decimal(41,2) ,
 `debitos3` decimal(41,2) ,
 `debitos4` decimal(41,2) ,
 `debitos5` decimal(41,2) ,
 `debitos6` decimal(41,2) ,
 `debitos7` decimal(41,2) ,
 `debitos8` decimal(41,2) ,
 `debitos9` decimal(41,2) ,
 `debitos10` decimal(41,2) ,
 `debitos11` decimal(41,2) ,
 `debitos12` decimal(41,2) ,
 `creditos1` decimal(41,2) ,
 `creditos2` decimal(41,2) ,
 `creditos3` decimal(41,2) ,
 `creditos4` decimal(41,2) ,
 `creditos5` decimal(41,2) ,
 `creditos6` decimal(41,2) ,
 `creditos7` decimal(41,2) ,
 `creditos8` decimal(41,2) ,
 `creditos9` decimal(41,2) ,
 `creditos10` decimal(41,2) ,
 `creditos11` decimal(41,2) ,
 `creditos12` decimal(41,2) 
)*/;

/*Table structure for table `vw_financeiropendente` */

DROP TABLE IF EXISTS `vw_financeiropendente`;

/*!50001 CREATE TABLE  `vw_financeiropendente`(
 `bancoNome` varchar(255) ,
 `contaApelido` varchar(255) ,
 `idConta` int ,
 `conta_bancaria_id` int ,
 `codigoHistorico` varchar(3) ,
 `descricaoHistorico` varchar(40) ,
 `grupoHistorico` varchar(40) ,
 `ano` int ,
 `Pendente` tinyint(1) ,
 `debitos1` decimal(41,2) ,
 `debitos2` decimal(41,2) ,
 `debitos3` decimal(41,2) ,
 `debitos4` decimal(41,2) ,
 `debitos5` decimal(41,2) ,
 `debitos6` decimal(41,2) ,
 `debitos7` decimal(41,2) ,
 `debitos8` decimal(41,2) ,
 `debitos9` decimal(41,2) ,
 `debitos10` decimal(41,2) ,
 `debitos11` decimal(41,2) ,
 `debitos12` decimal(41,2) ,
 `creditos1` decimal(41,2) ,
 `creditos2` decimal(41,2) ,
 `creditos3` decimal(41,2) ,
 `creditos4` decimal(41,2) ,
 `creditos5` decimal(41,2) ,
 `creditos6` decimal(41,2) ,
 `creditos7` decimal(41,2) ,
 `creditos8` decimal(41,2) ,
 `creditos9` decimal(41,2) ,
 `creditos10` decimal(41,2) ,
 `creditos11` decimal(41,2) ,
 `creditos12` decimal(41,2) 
)*/;

/*Table structure for table `vw_saldobancario` */

DROP TABLE IF EXISTS `vw_saldobancario`;

/*!50001 CREATE TABLE  `vw_saldobancario`(
 `bancoNome` varchar(255) ,
 `bancoNomeCurto` varchar(100) ,
 `descricaoConta` varchar(50) ,
 `contaApelido` varchar(255) ,
 `codigoAgencia` varchar(10) ,
 `numeroConta` varchar(20) ,
 `idConta` int ,
 `digitoConta` varchar(1) ,
 `conta_bancaria_id` int ,
 `numeroDocumento` varchar(15) ,
 `idMovimento` int ,
 `tipoMovimento` enum('PAGAMENTO','CHEQUE','RECIBO','DEPÓSITO') ,
 `historico` varchar(255) ,
 `idHistorico` int ,
 `saldoInicial` float(19,2) ,
 `chequeEspecial` float(19,2) ,
 `codigoHistorico` varchar(3) ,
 `descricaoHistorico` varchar(40) ,
 `dia` int ,
 `mes` int ,
 `ano` int ,
 `dataMovimento` date ,
 `creditosPendentes` decimal(19,2) ,
 `debitosPendentes` decimal(19,2) ,
 `creditos` decimal(19,2) ,
 `debitos` decimal(19,2) 
)*/;

/*View structure for view contasapagaravencer */

/*!50001 DROP TABLE IF EXISTS `contasapagaravencer` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `contasapagaravencer` AS select `acpwforn`.`FORN_Nome` AS `FORN_Nome`,`acpwentr`.`ENTR_Id` AS `ENTR_Id`,`acpwentr`.`FORN_Id` AS `FORN_Codigo`,`acpwentr`.`ENTR_NumTitulo` AS `ENTR_NumTitulo`,`acpwentr`.`ENTR_Parcela` AS `ENTR_Parcela`,`acpwentr`.`CCUS_Codigo` AS `CCUS_Codigo`,`acpwentr`.`HIST_Codigo` AS `HIST_Codigo`,`acpwentr`.`ENTR_ComplHist` AS `ENTR_ComplHist`,`acpwentr`.`ENTR_DataEmissao` AS `ENTR_DataEmissao`,`acpwentr`.`ENTR_Vencimento` AS `ENTR_Vencimento`,`acpwentr`.`MOED_Codigo` AS `MOED_Codigo`,`acpwentr`.`ENTR_ValorMoeda` AS `ENTR_ValorMoeda`,`acpwentr`.`ENTR_PercMulta` AS `ENTR_PercMulta`,`acpwentr`.`ENTR_TipoJuros` AS `ENTR_TipoJuros`,`acpwentr`.`ENTR_Juros` AS `ENTR_Juros`,`acpwentr`.`ENTR_PercDesconto` AS `ENTR_PercDesconto`,`acpwentr`.`ENTR_Previsao` AS `ENTR_Previsao`,`acpwentr`.`ENTR_Prioridade` AS `ENTR_Prioridade`,`acpwentr`.`BISAUSUA_LastUpdate` AS `BISAUSUA_LastUpdate`,`acpwentr`.`BISAUSUA_Sequencial` AS `BISAUSUA_Sequencial`,`acpwentr`.`ENTR_Situacao` AS `ENTR_Situacao`,`acpwentr`.`ENTR_Visivel` AS `ENTR_Visivel`,`acpwentr`.`ENTR_TipoConta` AS `ENTR_TipoConta`,`acpwentr`.`ENTR_TipoDesconto` AS `ENTR_TipoDesconto`,(case `acpwentr`.`ENTR_Situacao` when 'A' then 'Aberta' when 'B' then 'Fechada' when 'P' then 'Parcial' end) AS `Estado` from (`acpwentr` left join `acpwforn` on((`acpwentr`.`FORN_Id` = `acpwforn`.`FORN_Id`))) where ((`acpwentr`.`ENTR_Situacao` <> 'B') and (`acpwentr`.`ENTR_Visivel` = 1) and (`acpwentr`.`ENTR_Vencimento` >= curdate())) */;

/*View structure for view contasapagarpagas */

/*!50001 DROP TABLE IF EXISTS `contasapagarpagas` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `contasapagarpagas` AS select `acpwforn`.`FORN_Nome` AS `FORN_Nome`,`acpwentr`.`ENTR_Id` AS `ENTR_Id`,`acpwentr`.`FORN_Id` AS `FORN_Codigo`,`acpwentr`.`ENTR_NumTitulo` AS `ENTR_NumTitulo`,`acpwentr`.`ENTR_Parcela` AS `ENTR_Parcela`,`acpwentr`.`CCUS_Codigo` AS `CCUS_Codigo`,`acpwentr`.`HIST_Codigo` AS `HIST_Codigo`,`acpwentr`.`ENTR_ComplHist` AS `ENTR_ComplHist`,`acpwentr`.`ENTR_DataEmissao` AS `ENTR_DataEmissao`,`acpwentr`.`ENTR_Vencimento` AS `ENTR_Vencimento`,`acpwentr`.`MOED_Codigo` AS `MOED_Codigo`,`acpwentr`.`ENTR_ValorMoeda` AS `ENTR_ValorMoeda`,`acpwentr`.`ENTR_PercMulta` AS `ENTR_PercMulta`,`acpwentr`.`ENTR_TipoJuros` AS `ENTR_TipoJuros`,`acpwentr`.`ENTR_Juros` AS `ENTR_Juros`,`acpwentr`.`ENTR_PercDesconto` AS `ENTR_PercDesconto`,`acpwentr`.`ENTR_Previsao` AS `ENTR_Previsao`,`acpwentr`.`ENTR_Prioridade` AS `ENTR_Prioridade`,`acpwentr`.`BISAUSUA_LastUpdate` AS `BISAUSUA_LastUpdate`,`acpwentr`.`BISAUSUA_Sequencial` AS `BISAUSUA_Sequencial`,`acpwentr`.`ENTR_Situacao` AS `ENTR_Situacao`,`acpwentr`.`ENTR_Visivel` AS `ENTR_Visivel`,`acpwentr`.`ENTR_TipoConta` AS `ENTR_TipoConta`,`acpwentr`.`ENTR_TipoDesconto` AS `ENTR_TipoDesconto`,(case `acpwentr`.`ENTR_Situacao` when 'A' then 'Aberta' when 'B' then 'Fechada' when 'P' then 'Parcial' end) AS `Estado` from (`acpwentr` left join `acpwforn` on((`acpwentr`.`FORN_Id` = `acpwforn`.`FORN_Id`))) where ((`acpwentr`.`ENTR_Situacao` = 'B') and (`acpwentr`.`ENTR_Visivel` = 1)) */;

/*View structure for view contasapagartodas */

/*!50001 DROP TABLE IF EXISTS `contasapagartodas` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `contasapagartodas` AS select `acpwforn`.`FORN_Nome` AS `FORN_Nome`,`acpwentr`.`ENTR_Id` AS `ENTR_Id`,`acpwentr`.`FORN_Id` AS `FORN_Codigo`,`acpwentr`.`ENTR_NumTitulo` AS `ENTR_NumTitulo`,`acpwentr`.`ENTR_Parcela` AS `ENTR_Parcela`,`acpwentr`.`CCUS_Codigo` AS `CCUS_Codigo`,`acpwentr`.`HIST_Codigo` AS `HIST_Codigo`,`acpwentr`.`ENTR_ComplHist` AS `ENTR_ComplHist`,`acpwentr`.`ENTR_DataEmissao` AS `ENTR_DataEmissao`,`acpwentr`.`ENTR_Vencimento` AS `ENTR_Vencimento`,`acpwentr`.`MOED_Codigo` AS `MOED_Codigo`,`acpwentr`.`ENTR_ValorMoeda` AS `ENTR_ValorMoeda`,`acpwentr`.`ENTR_PercMulta` AS `ENTR_PercMulta`,`acpwentr`.`ENTR_TipoJuros` AS `ENTR_TipoJuros`,`acpwentr`.`ENTR_Juros` AS `ENTR_Juros`,`acpwentr`.`ENTR_PercDesconto` AS `ENTR_PercDesconto`,`acpwentr`.`ENTR_Previsao` AS `ENTR_Previsao`,`acpwentr`.`ENTR_Prioridade` AS `ENTR_Prioridade`,`acpwentr`.`BISAUSUA_LastUpdate` AS `BISAUSUA_LastUpdate`,`acpwentr`.`BISAUSUA_Sequencial` AS `BISAUSUA_Sequencial`,`acpwentr`.`ENTR_Situacao` AS `ENTR_Situacao`,`acpwentr`.`ENTR_Visivel` AS `ENTR_Visivel`,`acpwentr`.`ENTR_TipoConta` AS `ENTR_TipoConta`,`acpwentr`.`ENTR_TipoDesconto` AS `ENTR_TipoDesconto`,(case `acpwentr`.`ENTR_Situacao` when 'A' then 'Aberta' when 'B' then 'Fechada' when 'P' then 'Parcial' end) AS `Estado` from (`acpwentr` left join `acpwforn` on((`acpwentr`.`FORN_Id` = `acpwforn`.`FORN_Id`))) where (`acpwentr`.`ENTR_Visivel` = 1) order by `acpwentr`.`ENTR_Vencimento` */;

/*View structure for view contasapagarvencidas */

/*!50001 DROP TABLE IF EXISTS `contasapagarvencidas` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `contasapagarvencidas` AS select `acpwforn`.`FORN_Nome` AS `FORN_Nome`,`acpwentr`.`ENTR_Id` AS `ENTR_Id`,`acpwentr`.`FORN_Id` AS `FORN_Codigo`,`acpwentr`.`ENTR_NumTitulo` AS `ENTR_NumTitulo`,`acpwentr`.`ENTR_Parcela` AS `ENTR_Parcela`,`acpwentr`.`CCUS_Codigo` AS `CCUS_Codigo`,`acpwentr`.`HIST_Codigo` AS `HIST_Codigo`,`acpwentr`.`ENTR_ComplHist` AS `ENTR_ComplHist`,`acpwentr`.`ENTR_DataEmissao` AS `ENTR_DataEmissao`,`acpwentr`.`ENTR_Vencimento` AS `ENTR_Vencimento`,`acpwentr`.`MOED_Codigo` AS `MOED_Codigo`,`acpwentr`.`ENTR_ValorMoeda` AS `ENTR_ValorMoeda`,`acpwentr`.`ENTR_PercMulta` AS `ENTR_PercMulta`,`acpwentr`.`ENTR_TipoJuros` AS `ENTR_TipoJuros`,`acpwentr`.`ENTR_Juros` AS `ENTR_Juros`,`acpwentr`.`ENTR_PercDesconto` AS `ENTR_PercDesconto`,`acpwentr`.`ENTR_Previsao` AS `ENTR_Previsao`,`acpwentr`.`ENTR_Prioridade` AS `ENTR_Prioridade`,`acpwentr`.`BISAUSUA_LastUpdate` AS `BISAUSUA_LastUpdate`,`acpwentr`.`BISAUSUA_Sequencial` AS `BISAUSUA_Sequencial`,`acpwentr`.`ENTR_Situacao` AS `ENTR_Situacao`,`acpwentr`.`ENTR_Visivel` AS `ENTR_Visivel`,`acpwentr`.`ENTR_TipoConta` AS `ENTR_TipoConta`,`acpwentr`.`ENTR_TipoDesconto` AS `ENTR_TipoDesconto`,(case `acpwentr`.`ENTR_Situacao` when 'A' then 'Aberta' when 'B' then 'Fechada' when 'P' then 'Parcial' end) AS `Estado` from (`acpwentr` left join `acpwforn` on((`acpwentr`.`FORN_Id` = `acpwforn`.`FORN_Id`))) where ((`acpwentr`.`ENTR_Situacao` <> 'B') and (`acpwentr`.`ENTR_Visivel` = 1) and (`acpwentr`.`ENTR_Vencimento` < curdate())) */;

/*View structure for view contasareceberavencer */

/*!50001 DROP TABLE IF EXISTS `contasareceberavencer` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `contasareceberavencer` AS select `acrwclie`.`CLIE_Nome` AS `CLIE_Nome`,`acrwentr`.`ENTR_Id` AS `ENTR_Id`,`acrwentr`.`CONT_Id` AS `CONT_Codigo`,`acrwentr`.`TPCR_Codigo` AS `TPCR_Codigo`,`acrwentr`.`ENTR_Ano` AS `ENTR_Ano`,`acrwentr`.`ENTR_Mes` AS `ENTR_Mes`,`acrwentr`.`ENTR_NumTitulo` AS `ENTR_NumTitulo`,`acrwentr`.`TABEBANC_Codigo` AS `TABEBANC_Codigo`,`acrwentr`.`ENTR_Parcela` AS `ENTR_Parcela`,`acrwentr`.`ENTR_LocalPagto` AS `ENTR_LocalPagto`,`acrwentr`.`ENTR_DataEmissao` AS `ENTR_DataEmissao`,`acrwentr`.`ENTR_Vencimento` AS `ENTR_Vencimento`,`acrwentr`.`MOED_Codigo` AS `MOED_Codigo`,`acrwentr`.`ENTR_ValorMoeda` AS `ENTR_ValorMoeda`,`acrwentr`.`ENTR_ValorReal` AS `ENTR_ValorReal`,`acrwentr`.`ENTR_CodGeracaoCredito` AS `ENTR_CodGeracaoCredito`,`acrwentr`.`ENTR_Situacao` AS `ENTR_Situacao`,`acrwentr`.`BISAUSUA_LastUpdate` AS `BISAUSUA_LastUpdate`,`acrwentr`.`BISAUSUA_Sequencial` AS `BISAUSUA_Sequencial`,`acrwentr`.`ENTR_TipoConta` AS `ENTR_TipoConta`,`acrwentr`.`ENTR_Visivel` AS `ENTR_Visivel`,`acrwentr`.`CLIE_Id` AS `CLIE_Id`,`acrwentr`.`CONT_Id` AS `CONT_Id`,`acrwentr`.`ENTR_TipoDesconto` AS `ENTR_TipoDesconto`,(case `acrwentr`.`ENTR_Situacao` when 'A' then 'Aberta' when 'B' then 'Fechada' when 'P' then 'Parcial' end) AS `Estado` from (`acrwentr` left join `acrwclie` on((`acrwentr`.`CLIE_Id` = `acrwclie`.`CLIE_Id`))) where ((`acrwentr`.`ENTR_Situacao` <> 'B') and (`acrwentr`.`ENTR_Visivel` = 1) and (`acrwentr`.`ENTR_Vencimento` >= curdate())) */;

/*View structure for view contasareceberrecebidas */

/*!50001 DROP TABLE IF EXISTS `contasareceberrecebidas` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `contasareceberrecebidas` AS select `acrwclie`.`CLIE_Nome` AS `CLIE_Nome`,`acrwentr`.`ENTR_Id` AS `ENTR_Id`,`acrwentr`.`CONT_Id` AS `CONT_Codigo`,`acrwentr`.`TPCR_Codigo` AS `TPCR_Codigo`,`acrwentr`.`ENTR_Ano` AS `ENTR_Ano`,`acrwentr`.`ENTR_Mes` AS `ENTR_Mes`,`acrwentr`.`ENTR_NumTitulo` AS `ENTR_NumTitulo`,`acrwentr`.`TABEBANC_Codigo` AS `TABEBANC_Codigo`,`acrwentr`.`ENTR_Parcela` AS `ENTR_Parcela`,`acrwentr`.`ENTR_LocalPagto` AS `ENTR_LocalPagto`,`acrwentr`.`ENTR_DataEmissao` AS `ENTR_DataEmissao`,`acrwentr`.`ENTR_Vencimento` AS `ENTR_Vencimento`,`acrwentr`.`MOED_Codigo` AS `MOED_Codigo`,`acrwentr`.`ENTR_ValorMoeda` AS `ENTR_ValorMoeda`,`acrwentr`.`ENTR_ValorReal` AS `ENTR_ValorReal`,`acrwentr`.`ENTR_CodGeracaoCredito` AS `ENTR_CodGeracaoCredito`,`acrwentr`.`ENTR_Situacao` AS `ENTR_Situacao`,`acrwentr`.`BISAUSUA_LastUpdate` AS `BISAUSUA_LastUpdate`,`acrwentr`.`BISAUSUA_Sequencial` AS `BISAUSUA_Sequencial`,`acrwentr`.`ENTR_TipoConta` AS `ENTR_TipoConta`,`acrwentr`.`ENTR_Visivel` AS `ENTR_Visivel`,`acrwentr`.`CLIE_Id` AS `CLIE_Id`,`acrwentr`.`CONT_Id` AS `CONT_Id`,`acrwentr`.`ENTR_TipoDesconto` AS `ENTR_TipoDesconto`,(case `acrwentr`.`ENTR_Situacao` when 'A' then 'Aberta' when 'B' then 'Fechada' when 'P' then 'Parcial' end) AS `Estado` from (`acrwentr` left join `acrwclie` on((`acrwentr`.`CLIE_Id` = `acrwclie`.`CLIE_Id`))) where ((`acrwentr`.`ENTR_Situacao` = 'B') and (`acrwentr`.`ENTR_Visivel` = 1)) */;

/*View structure for view contasarecebertodas */

/*!50001 DROP TABLE IF EXISTS `contasarecebertodas` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `contasarecebertodas` AS select `acrwclie`.`CLIE_Nome` AS `CLIE_Nome`,`acrwentr`.`ENTR_Id` AS `ENTR_Id`,`acrwentr`.`CONT_Id` AS `CONT_Codigo`,`acrwentr`.`TPCR_Codigo` AS `TPCR_Codigo`,`acrwentr`.`ENTR_Ano` AS `ENTR_Ano`,`acrwentr`.`ENTR_Mes` AS `ENTR_Mes`,`acrwentr`.`ENTR_NumTitulo` AS `ENTR_NumTitulo`,`acrwentr`.`TABEBANC_Codigo` AS `TABEBANC_Codigo`,`acrwentr`.`ENTR_Parcela` AS `ENTR_Parcela`,`acrwentr`.`ENTR_LocalPagto` AS `ENTR_LocalPagto`,`acrwentr`.`ENTR_DataEmissao` AS `ENTR_DataEmissao`,`acrwentr`.`ENTR_Vencimento` AS `ENTR_Vencimento`,`acrwbaix`.`BAIX_DataBaixa` AS `BAIX_DataBaixa`,`acrwbaix`.`BAIX_DataPagamento` AS `BAIX_DataPagamento`,`acrwentr`.`MOED_Codigo` AS `MOED_Codigo`,`acrwentr`.`ENTR_ValorMoeda` AS `ENTR_ValorMoeda`,`acrwentr`.`ENTR_ValorReal` AS `ENTR_ValorReal`,`acrwentr`.`ENTR_CodGeracaoCredito` AS `ENTR_CodGeracaoCredito`,`acrwentr`.`ENTR_Situacao` AS `ENTR_Situacao`,`acrwentr`.`BISAUSUA_LastUpdate` AS `BISAUSUA_LastUpdate`,`acrwentr`.`BISAUSUA_Sequencial` AS `BISAUSUA_Sequencial`,`acrwentr`.`ENTR_TipoConta` AS `ENTR_TipoConta`,`acrwentr`.`ENTR_Visivel` AS `ENTR_Visivel`,`acrwentr`.`CLIE_Id` AS `CLIE_Id`,`acrwentr`.`CONT_Id` AS `CONT_Id`,`acrwentr`.`ENTR_TipoDesconto` AS `ENTR_TipoDesconto`,(case `acrwentr`.`ENTR_Situacao` when 'A' then 'Aberta' when 'B' then 'Fechada' when 'P' then 'Parcial' end) AS `Estado` from ((`acrwentr` left join `acrwclie` on((`acrwentr`.`CLIE_Id` = `acrwclie`.`CLIE_Id`))) left join `acrwbaix` on((`acrwentr`.`ENTR_Id` = `acrwbaix`.`ENTR_Id`))) where (`acrwentr`.`ENTR_Visivel` = 1) */;

/*View structure for view contasarecebervencidas */

/*!50001 DROP TABLE IF EXISTS `contasarecebervencidas` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `contasarecebervencidas` AS select `acrwclie`.`CLIE_Nome` AS `CLIE_Nome`,`acrwentr`.`ENTR_Id` AS `ENTR_Id`,`acrwentr`.`CONT_Id` AS `CONT_Codigo`,`acrwentr`.`TPCR_Codigo` AS `TPCR_Codigo`,`acrwentr`.`ENTR_Ano` AS `ENTR_Ano`,`acrwentr`.`ENTR_Mes` AS `ENTR_Mes`,`acrwentr`.`ENTR_NumTitulo` AS `ENTR_NumTitulo`,`acrwentr`.`TABEBANC_Codigo` AS `TABEBANC_Codigo`,`acrwentr`.`ENTR_Parcela` AS `ENTR_Parcela`,`acrwentr`.`ENTR_LocalPagto` AS `ENTR_LocalPagto`,`acrwentr`.`ENTR_DataEmissao` AS `ENTR_DataEmissao`,`acrwentr`.`ENTR_Vencimento` AS `ENTR_Vencimento`,`acrwentr`.`MOED_Codigo` AS `MOED_Codigo`,`acrwentr`.`ENTR_ValorMoeda` AS `ENTR_ValorMoeda`,`acrwentr`.`ENTR_ValorReal` AS `ENTR_ValorReal`,`acrwentr`.`ENTR_CodGeracaoCredito` AS `ENTR_CodGeracaoCredito`,`acrwentr`.`ENTR_Situacao` AS `ENTR_Situacao`,`acrwentr`.`BISAUSUA_LastUpdate` AS `BISAUSUA_LastUpdate`,`acrwentr`.`BISAUSUA_Sequencial` AS `BISAUSUA_Sequencial`,`acrwentr`.`ENTR_TipoConta` AS `ENTR_TipoConta`,`acrwentr`.`ENTR_Visivel` AS `ENTR_Visivel`,`acrwentr`.`CLIE_Id` AS `CLIE_Id`,`acrwentr`.`CONT_Id` AS `CONT_Id`,`acrwentr`.`ENTR_TipoDesconto` AS `ENTR_TipoDesconto`,(case `acrwentr`.`ENTR_Situacao` when 'A' then 'Aberta' when 'B' then 'Fechada' when 'P' then 'Parcial' end) AS `Estado` from (`acrwentr` left join `acrwclie` on((`acrwentr`.`CLIE_Id` = `acrwclie`.`CLIE_Id`))) where ((`acrwentr`.`ENTR_Situacao` <> 'B') and (`acrwentr`.`ENTR_Visivel` = 1) and (`acrwentr`.`ENTR_Vencimento` < curdate())) */;

/*View structure for view vw_acrwregistrador */

/*!50001 DROP TABLE IF EXISTS `vw_acrwregistrador` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vw_acrwregistrador` AS select `acrwclie`.`CLIE_Codigo` AS `clie_codigo`,`acrwclie`.`CLIE_FoneContato` AS `CLIE_FoneContato`,`acrwcont`.`CONT_Codigo` AS `cont_codigo`,`bisasist`.`BISASIST_Sigla` AS `SIST_Codigo`,`bisasist`.`BISASIST_Descricao` AS `BISASIST_Descricao`,`acrwclie`.`CLIE_Nome` AS `CLIE_Nome`,`tabeestados`.`uf` AS `CLIE_Estado`,`acrwclie`.`CLIE_CNPJ_CPF` AS `CLIE_CNPJ_CPF`,`acrwclie`.`CLIE_Email` AS `CLIE_Email`,`acrwclie`.`CLIE_CodigoSIAPE` AS `CLIE_CodigoSIAPE`,`acrwclie`.`CLIE_CodigoSIAPE2` AS `CLIE_CodigoSIAPE2`,`acrwclie`.`CLIE_NomeParaRelatorios` AS `CLIE_NomeParaRelatorios`,`acrwclie`.`CLIE_Sigla` AS `CLIE_Sigla`,`acrwclie`.`CLIE_Contato` AS `CLIE_Contato`,`acrwclie`.`CLIE_Logomarca` AS `CLIE_Logomarca`,`acrwcont`.`CONT_PrazoCarencia` AS `CONT_PrazoCarencia`,`acrwclie`.`CLIE_Site` AS `CLIE_Site`,`acrwclie`.`CLIE_CEP` AS `CLIE_CEP`,`acrwclie`.`CLIE_Endereco` AS `CLIE_Endereco`,`acrwclie`.`CLIE_Numero` AS `CLIE_Numero`,`acrwclie`.`CLIE_Complemento` AS `CLIE_Complemento`,`acrwclie`.`CLIE_Bairro` AS `CLIE_Bairro`,`acrwclie`.`CLIE_Cidade` AS `CLIE_Cidade`,`acrwclie`.`CLIE_InscMunicipal` AS `CLIE_InscMunicipal`,`acrwclie`.`CLIE_InscEstadual` AS `CLIE_InscEstadual`,`acrwclie`.`TPCL_Codigo` AS `TPCL_Codigo`,`acrwclie`.`CLIE_Database` AS `CLIE_Database`,`acrwclie`.`Link_Filiados` AS `Link_Filiados`,`acrwclie`.`CLIE_Visivel` AS `CLIE_Visivel`,(select count(0) from (`acrwentr` left join `acrwbaix` on(((`acrwbaix`.`ENTR_Id` = `acrwentr`.`ENTR_Id`) and (`acrwbaix`.`TPCR_Codigo` = `acrwentr`.`TPCR_Codigo`) and (`acrwbaix`.`TABEBANC_Codigo` = `acrwentr`.`TABEBANC_Codigo`)))) where ((`acrwentr`.`CLIE_Id` = `acrwclie`.`CLIE_Id`) and (`acrwentr`.`ENTR_Situacao` <> 'B') and (`acrwentr`.`ENTR_Visivel` = 1) and ((to_days(now()) - to_days(`acrwentr`.`ENTR_Vencimento`)) > 30))) AS `contasVencidas`,`acrwcont`.`CONT_Situacao` AS `CONT_Situacao`,now() AS `REGISTRADOR_ULTIMA_ATUALIZACAO` from ((((`acrwclie` left join `acrwcont` on((`acrwclie`.`CLIE_Id` = `acrwcont`.`CLIE_Id`))) left join `acrwcont_bisasist` on((`acrwcont_bisasist`.`CONT_Id` = `acrwcont`.`CONT_Id`))) left join `bisasist` on((`acrwcont_bisasist`.`SIST_Id` = `bisasist`.`BISASIST_Id`))) left join `tabeestados` on((`acrwclie`.`CLIE_Estado` = `tabeestados`.`id`))) group by `acrwcont`.`CONT_Id`,`bisasist`.`BISASIST_Id` */;

/*View structure for view vw_acrwregistrador_2 */

/*!50001 DROP TABLE IF EXISTS `vw_acrwregistrador_2` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_acrwregistrador_2` AS select `acrwclie`.`CLIE_Nome` AS `CLIE_Nome`,`acrwclie`.`CLIE_Codigo` AS `clie_codigo`,`acrwcont`.`CONT_Codigo` AS `cont_codigo`,`bisasist`.`BISASIST_Sigla` AS `SIST_Codigo`,`acrwentr`.`ENTR_Id` AS `ENTR_Id`,`acrwentr`.`TPCR_Codigo` AS `TPCR_Codigo`,`acrwentr`.`ENTR_Ano` AS `ENTR_Ano`,`acrwentr`.`ENTR_Mes` AS `ENTR_Mes`,`acrwentr`.`ENTR_NumTitulo` AS `ENTR_NumTitulo`,`acrwentr`.`TABEBANC_Codigo` AS `TABEBANC_Codigo`,`acrwentr`.`ENTR_Parcela` AS `ENTR_Parcela`,`acrwentr`.`ENTR_LocalPagto` AS `ENTR_LocalPagto`,date_format(`acrwentr`.`ENTR_DataEmissao`,'%d/%m/%Y') AS `ENTR_DataEmissao`,date_format(`acrwentr`.`ENTR_Vencimento`,'%d/%m/%Y') AS `ENTR_Vencimento`,`acrwentr`.`MOED_Codigo` AS `MOED_Codigo`,`acrwentr`.`ENTR_ValorMoeda` AS `ENTR_ValorMoeda`,`acrwentr`.`ENTR_ValorReal` AS `ENTR_ValorReal`,`acrwentr`.`ENTR_CodGeracaoCredito` AS `ENTR_CodGeracaoCredito`,`acrwentr`.`ENTR_Situacao` AS `ENTR_Situacao`,`acrwentr`.`BISAUSUA_LastUpdate` AS `BISAUSUA_LastUpdate`,`acrwentr`.`BISAUSUA_Sequencial` AS `BISAUSUA_Sequencial`,`acrwentr`.`ENTR_TipoConta` AS `ENTR_TipoConta`,`acrwentr`.`ENTR_Visivel` AS `ENTR_Visivel`,`acrwentr`.`CLIE_Id` AS `CLIE_Id`,`acrwentr`.`CONT_Id` AS `CONT_Id`,`acrwentr`.`ENTR_TipoDesconto` AS `ENTR_TipoDesconto`,(case `acrwentr`.`ENTR_Situacao` when 'A' then 'Aberta' when 'B' then 'Fechada' when 'P' then 'Parcial' end) AS `Estado` from ((((`acrwentr` left join `acrwclie` on((`acrwentr`.`CLIE_Id` = `acrwclie`.`CLIE_Id`))) left join `acrwcont` on(((`acrwcont`.`CLIE_Id` = `acrwclie`.`CLIE_Id`) and (`acrwentr`.`CONT_Id` = `acrwcont`.`CONT_Id`)))) left join `acrwcont_bisasist` on((`acrwcont_bisasist`.`CONT_Id` = `acrwcont`.`CONT_Id`))) left join `bisasist` on((`bisasist`.`BISASIST_Id` = `acrwcont_bisasist`.`SIST_Id`))) where ((`acrwentr`.`ENTR_Situacao` <> 'B') and (`acrwentr`.`ENTR_Visivel` = 1) and (`acrwentr`.`ENTR_Vencimento` < curdate())) */;

/*View structure for view vw_contasapagar */

/*!50001 DROP TABLE IF EXISTS `vw_contasapagar` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_contasapagar` AS select sum(`acpwbaix`.`BAIX_ValorPagoMoeda`) AS `baixas`,`acpwentr`.`ENTR_Id` AS `ENTR_Id`,`acpwentr`.`ENTR_TipoConta` AS `ENTR_TipoConta`,`acpwentr`.`FORN_Id` AS `FORN_Codigo`,`acpwforn`.`FORN_Nome` AS `FORN_Nome`,`acpwentr`.`ENTR_NumTitulo` AS `ENTR_NumTitulo`,`acpwentr`.`ENTR_Parcela` AS `ENTR_Parcela`,`acpwentr`.`HIST_Codigo` AS `HIST_Codigo`,`tabehist`.`HIST_Descricao` AS `HIST_Descricao`,`acpwentr`.`ENTR_ComplHist` AS `ENTR_ComplHist`,cast(`acpwentr`.`ENTR_DataEmissao` as date) AS `ENTR_DataEmissao`,cast(`acpwentr`.`ENTR_Vencimento` as date) AS `ENTR_Venc`,`acpwentr`.`ENTR_PercMulta` AS `ENTR_PercMulta`,`acpwentr`.`ENTR_TipoJuros` AS `ENTR_TipoJuros`,`acpwentr`.`ENTR_Juros` AS `ENTR_Juros`,`acpwentr`.`ENTR_PercDesconto` AS `ENTR_PercDesconto`,`acpwentr`.`ENTR_Prioridade` AS `ENTR_Prioridade`,`acpwentr`.`ENTR_Situacao` AS `ENTR_Situacao`,`acpwentr`.`ENTR_TipoDesconto` AS `ENTR_TipoDesconto`,`acpwentr`.`CCUS_Codigo` AS `ENTR_CCUS_Codigo`,`tabeccus`.`CCUS_Nome` AS `ENTR_CCUS_Nome`,`acpwbaix`.`BAIX_OutrosAcrescimos` AS `OutrosAcrescimos`,`acpwbaix`.`BAIX_OutrosDescontos` AS `OutrosDescontos`,`acpwbaix`.`BAIX_DataBaixa` AS `data_baixa`,(`acpwentr`.`ENTR_ValorMoeda` - ifnull(0,sum(`acpwbaix`.`BAIX_ValorPagoMoeda`))) AS `ENTR_ValorMoeda` from ((((`acpwentr` left join `acpwforn` on((`acpwentr`.`FORN_Id` = `acpwforn`.`FORN_Id`))) left join `tabehist` on((`acpwentr`.`HIST_Codigo` = `tabehist`.`HIST_Codigo`))) left join `acpwbaix` on((`acpwentr`.`ENTR_Id` = `acpwbaix`.`ENTR_Id`))) left join `tabeccus` on((`acpwentr`.`CCUS_Codigo` = `tabeccus`.`CCUS_Codigo`))) where (`acpwentr`.`ENTR_Visivel` = 1) group by `acpwbaix`.`ENTR_Id`,`acpwentr`.`ENTR_Id` order by `acpwentr`.`ENTR_Vencimento`,`acpwforn`.`FORN_Nome`,`acpwentr`.`ENTR_NumTitulo` */;

/*View structure for view vw_contaspagas */

/*!50001 DROP TABLE IF EXISTS `vw_contaspagas` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_contaspagas` AS select `acpwentr`.`ENTR_Id` AS `ENTR_Id`,`acpwentr`.`ENTR_Visivel` AS `VISIVEL`,`acpwentr`.`ENTR_TipoConta` AS `ENTR_TipoConta`,`acpwentr`.`FORN_Id` AS `FORN_Codigo`,`acpwforn`.`FORN_Nome` AS `FORN_Nome`,`acpwentr`.`ENTR_NumTitulo` AS `ENTR_NumTitulo`,`acpwentr`.`ENTR_Parcela` AS `ENTR_Parcela`,`acpwentr`.`CCUS_Codigo` AS `ENTR_CCUS_Codigo`,`acpwentr`.`HIST_Codigo` AS `HIST_Codigo`,`tabehist`.`HIST_Descricao` AS `HIST_Descricao`,`acpwentr`.`ENTR_ComplHist` AS `ENTR_ComplHist`,`acpwbaix`.`ID` AS `BAIX_Id`,`tabeccus`.`CCUS_Codigo` AS `CCUS_Codigo`,`tabeccus`.`CCUS_Nome` AS `CCUS_Nome`,`acpwentr`.`ENTR_DataEmissao` AS `ENTR_DataEmissao`,`acpwentr`.`ENTR_Vencimento` AS `ENTR_Venc`,`acpwbaix`.`BAIX_DataBaixa` AS `BAIX_DataBaixa`,`acpwentr`.`ENTR_Situacao` AS `ENTR_Situacao`,`acpwentr`.`ENTR_ValorMoeda` AS `ENTR_ValorMoeda`,`acpwbaix`.`BAIX_ValorPagoReal` AS `BAIX_ValorPagoReal`,`acpwentr`.`ENTR_PercMulta` AS `ENTR_PercMulta`,`acpwbaix`.`BAIX_Multa` AS `BAIX_Multa`,`acpwentr`.`ENTR_TipoJuros` AS `ENTR_TipoJuros`,`acpwentr`.`ENTR_Juros` AS `ENTR_Juros`,`acpwbaix`.`BAIX_Juros` AS `BAIX_Juros`,`acpwentr`.`ENTR_PercDesconto` AS `ENTR_PercDesconto`,`acpwbaix`.`BAIX_Desconto` AS `BAIX_Desconto`,`acpwbaix`.`BAIX_OutrosDescontos` AS `BAIX_OutrosDescontos`,`acpwbaix`.`BAIX_OutrosAcrescimos` AS `BAIX_OutrosAcrescimos`,`acpwbaix`.`BAIX_ValorPagoReal` AS `SomaDasBaixas` from ((((`acpwentr` join `acpwforn` on((`acpwentr`.`FORN_Id` = `acpwforn`.`FORN_Id`))) left join `tabehist` on((`acpwentr`.`HIST_Codigo` = `tabehist`.`HIST_Codigo`))) left join `tabeccus` on((`acpwentr`.`CCUS_Codigo` = `tabeccus`.`CCUS_Codigo`))) join `acpwbaix` on((`acpwentr`.`ENTR_Id` = `acpwbaix`.`ENTR_Id`))) where ((`acpwentr`.`ENTR_Visivel` = 1) and (`acpwentr`.`ENTR_Situacao` = 'B')) order by `acpwforn`.`FORN_Nome` */;

/*View structure for view vw_financeiro */

/*!50001 DROP TABLE IF EXISTS `vw_financeiro` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`monetaweb_user`@`%` SQL SECURITY DEFINER VIEW `vw_financeiro` AS select `tab_banco`.`nome` AS `bancoNome`,`conta_bancaria`.`conta_apelido` AS `contaApelido`,`conta_bancaria`.`id` AS `idConta`,`movimento`.`conta_bancaria_id` AS `conta_bancaria_id`,`tabehist`.`HIST_Codigo` AS `codigoHistorico`,`tabehist`.`HIST_Descricao` AS `descricaoHistorico`,`tabegrhs`.`GRHS_Descricao` AS `grupoHistorico`,year(`movimento`.`data_lancamento`) AS `ano`,`movimento`.`pendente` AS `Pendente`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 1)) then `movimento_historico`.`valor` else 0 end)) AS `debitos1`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 2)) then `movimento_historico`.`valor` else 0 end)) AS `debitos2`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 3)) then `movimento_historico`.`valor` else 0 end)) AS `debitos3`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 4)) then `movimento_historico`.`valor` else 0 end)) AS `debitos4`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 5)) then `movimento_historico`.`valor` else 0 end)) AS `debitos5`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 6)) then `movimento_historico`.`valor` else 0 end)) AS `debitos6`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 7)) then `movimento_historico`.`valor` else 0 end)) AS `debitos7`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 8)) then `movimento_historico`.`valor` else 0 end)) AS `debitos8`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 9)) then `movimento_historico`.`valor` else 0 end)) AS `debitos9`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 10)) then `movimento_historico`.`valor` else 0 end)) AS `debitos10`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 11)) then `movimento_historico`.`valor` else 0 end)) AS `debitos11`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 12)) then `movimento_historico`.`valor` else 0 end)) AS `debitos12`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 1)) then `movimento_historico`.`valor` else 0 end)) AS `creditos1`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 2)) then `movimento_historico`.`valor` else 0 end)) AS `creditos2`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 3)) then `movimento_historico`.`valor` else 0 end)) AS `creditos3`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 4)) then `movimento_historico`.`valor` else 0 end)) AS `creditos4`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 5)) then `movimento_historico`.`valor` else 0 end)) AS `creditos5`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 6)) then `movimento_historico`.`valor` else 0 end)) AS `creditos6`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 7)) then `movimento_historico`.`valor` else 0 end)) AS `creditos7`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 8)) then `movimento_historico`.`valor` else 0 end)) AS `creditos8`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 9)) then `movimento_historico`.`valor` else 0 end)) AS `creditos9`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 10)) then `movimento_historico`.`valor` else 0 end)) AS `creditos10`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 11)) then `movimento_historico`.`valor` else 0 end)) AS `creditos11`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 0) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 12)) then `movimento_historico`.`valor` else 0 end)) AS `creditos12` from (((((`conta_bancaria` join `tab_banco` on((`conta_bancaria`.`tab_banco_id` = `tab_banco`.`id`))) join `movimento` on((`conta_bancaria`.`id` = `movimento`.`conta_bancaria_id`))) join `movimento_historico` on((`movimento`.`id` = `movimento_historico`.`movimento_id`))) left join `tabehist` on((`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`))) left join `tabegrhs` on((`tabegrhs`.`id` = `tabehist`.`tab_grupo_historico_id`))) where ((`movimento`.`visivel` = 1) and (`movimento_historico`.`visivel` = 1)) group by `movimento`.`conta_bancaria_id`,`tabehist`.`HIST_Codigo`,year(`movimento`.`data_lancamento`) */;

/*View structure for view vw_financeiropendente */

/*!50001 DROP TABLE IF EXISTS `vw_financeiropendente` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_financeiropendente` AS select `tab_banco`.`nome` AS `bancoNome`,`conta_bancaria`.`conta_apelido` AS `contaApelido`,`conta_bancaria`.`id` AS `idConta`,`movimento`.`conta_bancaria_id` AS `conta_bancaria_id`,`tabehist`.`HIST_Codigo` AS `codigoHistorico`,`tabehist`.`HIST_Descricao` AS `descricaoHistorico`,`tabegrhs`.`GRHS_Descricao` AS `grupoHistorico`,year(`movimento`.`data_lancamento`) AS `ano`,`movimento`.`pendente` AS `Pendente`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 1)) then `movimento_historico`.`valor` else 0 end)) AS `debitos1`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 2)) then `movimento_historico`.`valor` else 0 end)) AS `debitos2`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 3)) then `movimento_historico`.`valor` else 0 end)) AS `debitos3`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 4)) then `movimento_historico`.`valor` else 0 end)) AS `debitos4`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 5)) then `movimento_historico`.`valor` else 0 end)) AS `debitos5`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 6)) then `movimento_historico`.`valor` else 0 end)) AS `debitos6`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 7)) then `movimento_historico`.`valor` else 0 end)) AS `debitos7`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 8)) then `movimento_historico`.`valor` else 0 end)) AS `debitos8`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 9)) then `movimento_historico`.`valor` else 0 end)) AS `debitos9`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 10)) then `movimento_historico`.`valor` else 0 end)) AS `debitos10`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 11)) then `movimento_historico`.`valor` else 0 end)) AS `debitos11`,sum((case when ((`movimento_historico`.`historico_codigo` <= 498) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 12)) then `movimento_historico`.`valor` else 0 end)) AS `debitos12`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 1)) then `movimento_historico`.`valor` else 0 end)) AS `creditos1`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 2)) then `movimento_historico`.`valor` else 0 end)) AS `creditos2`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 3)) then `movimento_historico`.`valor` else 0 end)) AS `creditos3`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 4)) then `movimento_historico`.`valor` else 0 end)) AS `creditos4`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 5)) then `movimento_historico`.`valor` else 0 end)) AS `creditos5`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 6)) then `movimento_historico`.`valor` else 0 end)) AS `creditos6`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 7)) then `movimento_historico`.`valor` else 0 end)) AS `creditos7`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 8)) then `movimento_historico`.`valor` else 0 end)) AS `creditos8`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 9)) then `movimento_historico`.`valor` else 0 end)) AS `creditos9`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 10)) then `movimento_historico`.`valor` else 0 end)) AS `creditos10`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 11)) then `movimento_historico`.`valor` else 0 end)) AS `creditos11`,sum((case when ((`movimento_historico`.`historico_codigo` >= 500) and (`movimento`.`pendente` = 1) and (`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`) and (month(`movimento`.`data_lancamento`) = 12)) then `movimento_historico`.`valor` else 0 end)) AS `creditos12` from (((((`conta_bancaria` join `tab_banco` on((`conta_bancaria`.`tab_banco_id` = `tab_banco`.`id`))) join `movimento` on((`conta_bancaria`.`id` = `movimento`.`conta_bancaria_id`))) join `movimento_historico` on((`movimento`.`id` = `movimento_historico`.`movimento_id`))) left join `tabehist` on((`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`))) left join `tabegrhs` on((`tabegrhs`.`id` = `tabehist`.`tab_grupo_historico_id`))) where ((`movimento`.`visivel` = 1) and (`movimento`.`pendente` = 1)) group by `movimento`.`conta_bancaria_id`,`tabehist`.`HIST_Codigo`,year(`movimento`.`data_lancamento`) */;

/*View structure for view vw_saldobancario */

/*!50001 DROP TABLE IF EXISTS `vw_saldobancario` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`monetaweb_user`@`%` SQL SECURITY DEFINER VIEW `vw_saldobancario` AS select `tab_banco`.`nome` AS `bancoNome`,`tab_banco`.`nome_curto` AS `bancoNomeCurto`,`conta_bancaria`.`conta_descricao` AS `descricaoConta`,`conta_bancaria`.`conta_apelido` AS `contaApelido`,`conta_bancaria`.`codigo_agencia` AS `codigoAgencia`,`conta_bancaria`.`numero_conta` AS `numeroConta`,`conta_bancaria`.`id` AS `idConta`,`conta_bancaria`.`digito_conta` AS `digitoConta`,`movimento`.`conta_bancaria_id` AS `conta_bancaria_id`,`movimento`.`numero_documento` AS `numeroDocumento`,`movimento`.`id` AS `idMovimento`,`movimento`.`tipo` AS `tipoMovimento`,`movimento_historico`.`descricao` AS `historico`,`movimento_historico`.`id` AS `idHistorico`,`conta_bancaria`.`saldo_inicial` AS `saldoInicial`,`conta_bancaria`.`cheque_especial` AS `chequeEspecial`,`tabehist`.`HIST_Codigo` AS `codigoHistorico`,`tabehist`.`HIST_Descricao` AS `descricaoHistorico`,dayofmonth(`movimento`.`data_lancamento`) AS `dia`,month(`movimento`.`data_lancamento`) AS `mes`,year(`movimento`.`data_lancamento`) AS `ano`,cast(`movimento`.`data_lancamento` as date) AS `dataMovimento`,(case when ((`movimento_historico`.`historico_codigo` > 499) and (`movimento`.`pendente` = 1)) then `movimento_historico`.`valor` else 0 end) AS `creditosPendentes`,(case when ((`movimento_historico`.`historico_codigo` <= 499) and (`movimento`.`pendente` = 1)) then `movimento_historico`.`valor` else 0 end) AS `debitosPendentes`,(case when ((`movimento_historico`.`historico_codigo` > 499) and (`movimento`.`pendente` = 0)) then `movimento_historico`.`valor` else 0 end) AS `creditos`,(case when ((`movimento_historico`.`historico_codigo` <= 499) and (`movimento`.`pendente` = 0)) then `movimento_historico`.`valor` else 0 end) AS `debitos` from ((((`conta_bancaria` join `tab_banco` on((`conta_bancaria`.`tab_banco_id` = `tab_banco`.`id`))) join `movimento` on((`conta_bancaria`.`id` = `movimento`.`conta_bancaria_id`))) join `movimento_historico` on((`movimento`.`id` = `movimento_historico`.`movimento_id`))) left join `tabehist` on((`movimento_historico`.`historico_codigo` = `tabehist`.`HIST_Codigo`))) where ((`movimento`.`visivel` = 1) and (`movimento_historico`.`visivel` = 1) and (`tabehist`.`visivel` = 1)) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
