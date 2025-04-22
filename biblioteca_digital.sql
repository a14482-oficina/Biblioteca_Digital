-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql204.byetcluster.com
-- Tempo de geração: 22-Abr-2025 às 06:24
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
(7, 'livro_68012322544fc6.92861402.jpg', 'teste', 'teste', '24/03/2020', 32, 'InglÃªs', 'teste', 23),
(8, 'gemini-image-1742855661253-removebg-preview.png', 'teste_edit_livro', 'Martin Moniz', '24/03/2020', 43, 'Latim', 'teste', 23),
(14, 'IMG_20250401_220014924.jpg', 'yupie', 'Martin Moniz', '24/03/2020', 23, 'Latim', 'Romance', 23),
(17, 'livro_680106223ce8a7.65766477.png', 'teste_unico', 'Martin Moniz', '24/03/2020', 12, 'InglÃªs', 'Romance', 13),
(20, 'livro_680121966ecbb7.59950450.png', 'teste', 'Martin Moniz', '24/03/2020', 13, 'InglÃªs', 'aventura', 14),
(21, 'livro_6801336471bab1.15917549.png', 'teste_mario', 'mario', '24/03/2020', 100, 'InglÃªs', 'fortnite', 34);

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
  `estado` enum('pendente','aceite','rejeitada') DEFAULT 'pendente'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `requesitos`
--

INSERT INTO `requesitos` (`id`, `id_utilizador`, `id_livro`, `inicio`, `fim`, `estado`) VALUES
(6, 5, 7, '2025-04-22', '2025-04-23', 'pendente'),
(5, 6, 7, '2025-04-18', '2025-04-30', 'pendente'),
(4, 5, 7, '2025-04-17', '2025-04-24', 'pendente');

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
(5, 'gemini-image-1742855661253-removebg-preview.png', 'eusouomaior', '123', 'teste', 'teste@teste.com', '$2y$10$F1SR/rH0b2izx8tkMWbzm.bF7kSWdDNA40L77jsPGWHJQkcqoWaZW', 0),
(6, 'perfil_680108fed3e064.61558858.jpg', 'teste_edit5', '342', 'teste_edit', 'fredericogouveia21@gmail.com', '$2y$10$1u8EUcKO.HAHnBAQGhPBDePwx8KVhBW3LV/PacC9KYRzVNJ4seS5y', 1),
(7, 'website.jpg', 'teste_registo', '12345678', 'teste_registo', 'testeregisto@gmail.com', '$2y$10$x8470/nlHHdwgXMfc1DcI.G89M00XlVdfusnhzGI1295cl7LMHUj.', 0);

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `requesitos`
--
ALTER TABLE `requesitos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `utilizador`
--
ALTER TABLE `utilizador`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
