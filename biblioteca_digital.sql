-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql204.byetcluster.com
-- Tempo de geração: 29-Abr-2025 às 06:04
-- Versão do servidor: 10.6.19-MariaDB
-- versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ljmn_38553710_biblioteca_digital`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `lancamento` varchar(255) NOT NULL,
  `preco` int(255) NOT NULL,
  `idioma` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `stock` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id`, `image`, `nome`, `autor`, `lancamento`, `preco`, `idioma`, `categoria`, `stock`) VALUES
(23, 'livro_680f4274cfc844.45579590.jpg', 'teste', 'teste', '24/02/2025', 23, 'espanhol', 'aventura', 23);

-- --------------------------------------------------------

--
-- Estrutura da tabela `requesitos`
--

CREATE TABLE `requesitos` (
  `id` int(11) NOT NULL,
  `id_utilizador` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `inicio` date NOT NULL,
  `fim` date NOT NULL,
  `estado` enum('pendente','aceite','atrasado') NOT NULL DEFAULT 'pendente',
  `verif_entrega` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `requesitos`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizador`
--

CREATE TABLE `utilizador` (
  `id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `estado` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Extraindo dados da tabela `utilizador`
--

INSERT INTO `utilizador` (`id`, `image`, `nome`, `telefone`, `username`, `email`, `password`, `estado`) VALUES
(10, 'food-1.png', 'Teste_admin', '+351923457830', 'admin', 'admin@gmail.com', '$2y$10$2foiU8IEcsZbfl4qwevHruohCKPadiHr2AZMt/Dlvy6DRBuH.a7gi', 1),
(11, 'profile-pic.png', 'teste_cliente', '+351983475328', 'teste_cliente', 'cliente@gmail.com', '$2y$10$/fOcS4MkZ0beiVWTyxOrA.n6jpiax8fRcJWG6oQIBeLdItwbh3W1S', 0);


--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `requesitos`
--
ALTER TABLE `requesitos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `utilizador`
--
ALTER TABLE `utilizador`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `requesitos`
--
ALTER TABLE `requesitos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `utilizador`
--
ALTER TABLE `utilizador`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
