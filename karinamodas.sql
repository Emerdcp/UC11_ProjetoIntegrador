-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/10/2025 às 02:28
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `karinamodas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_categoria`
--

CREATE TABLE `cad_categoria` (
  `ID_CATEGORIA` int(11) NOT NULL,
  `CAT_DESCRICAO` varchar(50) DEFAULT NULL,
  `CAT_STATUS` char(1) DEFAULT NULL,
  `REGISTRO_STATUS` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_cliente`
--

CREATE TABLE `cad_cliente` (
  `ID_CLIENTE` int(11) NOT NULL,
  `CLI_CEP` varchar(10) DEFAULT NULL,
  `CLI_NOME` varchar(150) DEFAULT NULL,
  `CLI_CPF` varchar(14) DEFAULT NULL,
  `CLI_STATUS` char(1) DEFAULT NULL,
  `CLI_DATACAD` date DEFAULT NULL,
  `CLI_ENDERECO` varchar(200) DEFAULT NULL,
  `CLI_NUMERO` varchar(20) DEFAULT NULL,
  `CLI_COMPLEMENTO` varchar(40) DEFAULT NULL,
  `CLI_BAIRRO` varchar(80) DEFAULT NULL,
  `CLI_CIDADE` varchar(50) DEFAULT NULL,
  `CLI_UF` char(2) DEFAULT NULL,
  `CLI_TELEFONE` varchar(15) DEFAULT NULL,
  `CLI_TELEFONE2` varchar(15) DEFAULT NULL,
  `REGISTRO_STATUS` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_item`
--

CREATE TABLE `cad_item` (
  `ID_ITEM` int(11) NOT NULL,
  `ITEM_FLAG` char(1) DEFAULT NULL,
  `ITEM_CATEGORIA` int(11) DEFAULT NULL,
  `ITEM_DESCRICAO` varchar(200) DEFAULT NULL,
  `ITEM_UNIDADE` char(2) DEFAULT NULL,
  `ITEM_PRECOCOMPRA` decimal(10,0) DEFAULT NULL,
  `ITEM_PRECOVENDA` decimal(10,0) DEFAULT NULL,
  `ITEM_ESTOQUE` decimal(10,0) DEFAULT NULL,
  `ITEM_STATUS` char(1) DEFAULT NULL,
  `ITEM_DATACAD` date DEFAULT NULL,
  `REGISTRO_STATUS` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_usuario`
--

CREATE TABLE `cad_usuario` (
  `ID_USUARIO` int(11) NOT NULL,
  `USU_NOME` varchar(200) DEFAULT NULL,
  `USU_STATUS` char(1) DEFAULT NULL,
  `USU_DATACAD` date DEFAULT NULL,
  `USU_EMAIL` varchar(255) DEFAULT NULL,
  `USU_SENHA` varchar(255) DEFAULT NULL,
  `REGISTRO_STATUS` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cad_categoria`
--
ALTER TABLE `cad_categoria`
  ADD PRIMARY KEY (`ID_CATEGORIA`),
  ADD UNIQUE KEY `ID_CATEGORIA` (`ID_CATEGORIA`);

--
-- Índices de tabela `cad_cliente`
--
ALTER TABLE `cad_cliente`
  ADD PRIMARY KEY (`ID_CLIENTE`),
  ADD UNIQUE KEY `ID_CLIENTE` (`ID_CLIENTE`);

--
-- Índices de tabela `cad_item`
--
ALTER TABLE `cad_item`
  ADD PRIMARY KEY (`ID_ITEM`),
  ADD UNIQUE KEY `ID_ITEM` (`ID_ITEM`),
  ADD KEY `ITEM_CATEGORIA` (`ITEM_CATEGORIA`);

--
-- Índices de tabela `cad_usuario`
--
ALTER TABLE `cad_usuario`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD UNIQUE KEY `ID_USUARIO` (`ID_USUARIO`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cad_categoria`
--
ALTER TABLE `cad_categoria`
  MODIFY `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_cliente`
--
ALTER TABLE `cad_cliente`
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_item`
--
ALTER TABLE `cad_item`
  MODIFY `ID_ITEM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_usuario`
--
ALTER TABLE `cad_usuario`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cad_item`
--
ALTER TABLE `cad_item`
  ADD CONSTRAINT `cad_item_ibfk_1` FOREIGN KEY (`ITEM_CATEGORIA`) REFERENCES `cad_categoria` (`ID_CATEGORIA`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
