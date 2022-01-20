-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Jan 20. 01:56
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `blog`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`) VALUES
(18, 'vki', 'vki@gmail.com', 'vmi poszt'),
(19, 'Csilla', 'csilla@gmail.com', 'dddw'),
(20, 'Csilla', 'csilla@gmail.com', 'jan 20'),
(21, 'Csilla', 'csilla@gmail.com', 'jan 20');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `data`
--

INSERT INTO `data` (`id`, `title`, `content`, `user_id`) VALUES
(16, 'Mars 2020 Perseverance Rover - legújabb II', 'Sziasztok,\r\n\r\nmit gondoltok a NASA, lassan egy évvel ezelőtt a Marsra megérkezett űrjárójáról? Követi valaki az eseményeket? Köszi a válaszokat :)', 0),
(17, 'Vénusz?', 'Sziasztok,\r\n\r\nsokat olvasni a Marsról, Jupiterről... a Vénuszról nem hallani olyan sokat, ezért gondoltam, hogy kicsit előveszem a kalapból ezt a témát. Tudtátok, hogy az atmoszferikus nyomás olyan erős, hogy ha egy szkafanderes úrhajós lépne a felszínére, akkor üsszelapulna másodperceken belül?', 0),
(18, 'C/2021 A1 üstökös', 'Sziasztok,\r\n\r\nazt írták, hogy hamarosan olyan közel jöhet, hogy távcső nélkül is láthatóvá válhat. Sikerült valakinek lencsevégre kapnia?\r\n\r\n', 0),
(19, 'Plútó', 'A Plútó még bolygó vagy már nem?', 0),
(20, 'Tejútrendszer', 'A Tejútrendszer csak egy közepes méretű galaxisnak számít, amelynek a becslések szerint 200 milliárd csillaga van. Az általunk ismert legnagyobb galaxis az IC 1101, amelynek több mint 100 billió csillaga van.\r\nA legtöbb nagyobb galaxishoz hasonlóan a Tejútrendszer magjában is egy szupermasszív fekete lyuk található, a Sagittarius A*. Ennek a fekete lyuknak az átmérője a becslések szerint 14 millió mérföld, ami nem tartalmazza a beléje húzódó tömegkorongot. Ez a külső korong a Napunk tömegének körülbelül 14,6 milliószorosával rendelkezik.', 0),
(21, 'Egyetlen másodperc alatt pusztíthatja el a világot két fekete lyuk?', 'Csak látszólag stabil az univerzum, amely teoretikusan bármikor összeomolhat\r\nA 2012 júniusában felfedezett Higgs-bozon – amelynek létezését a részecskefizika standard modellje alapján Peter Higgs Nobel-díjas brit elméleti fizikus jósolta meg - felelős a többi részecske tömegéért. A Higgs-bozon teszi stabillá az univerzumot.', 0),
(22, 'Hold', 'A Hold a Naprendszer egyik óriásholdja, a Föld egyetlen holdja. A Földtől mért átlagos távolsága 384 402 kilométer, ami nagyjából a Föld átmérőjének 30-szorosa – más mértékegységekben 0,002 CsE vagy 1,3 fénymásodperc (a Nap visszaverődő fénye 1,3 másodperc alatt jut el róla a földi megfigyelőhöz). Átmérője 3476 kilométer, ami hozzávetőleg negyede a Földének. Ezzel a Hold a Naprendszer ötödik legnagyobb holdja a Jupiter három holdja, a Ganymedes, a Callisto és az Io, valamint a Szaturnusz Titan holdja után.\r\n\r\nA felszíni nehézségi gyorsulás (és így a testek súlya) körülbelül hatoda a földinek, így a rajta járó űrhajósok a 80–90 kg-os űrruhában is könnyedén mozogtak, ugráltak. A Holdnak nincsen számottevő légköre,[3][4] rendkívül ritka atmoszférájának teljes tömege 25 000 kg, aminek felszíni sűrűsége 2·105 részecske/cm³.[5] A Föld szabályosan ismétlődő takarása miatt néhány napig a napszél nem éri el a Holdat, ekkor a Föld külső légkörében lévő oxigénionok a Hold felszínére juthatnak.[6] Égboltja a sűrű légkör hiánya miatt teljesen fekete nappal is.[7][8] Az Űrkutatásban a Hold elsősorban a légkör hiánya miatt nem alkalmas a marsi viszonyokhoz adaptálható technológia kidolgozására.[9]\r\n\r\nKötött keringése miatt mindig ugyanaz az oldala fordul a Föld felé, és az innenső oldalán álló holdi megfigyelő (például az Apollo űrhajósai) számára a Föld mindig ugyanott látszik állni az égen (persze bolygónk ugyanúgy fázisokat mutatva elfogy és megtelik, mint a földi égen is a Hold). A Holdról azonban a Földnek nem mindig ugyanaz az oldala látszik.', 0),
(23, 'Napfogyatkozás', 'Napfogyatkozás akkor jön létre, amikor a Hold pontosan a Föld és a Nap közé kerül, azaz újholdkor. De nem minden újholdkor, hanem csak akkor, ha a Föld körüli pálya leszálló, vagy felszálló csomópontjában van éppen újholdkor a Hold. (A holdpálya nagyjából 5°-os szöget zár be az ekliptikával, azaz a Hold hol kissé a Földet a Nappal összekötő képzeletbeli vonal felett, hol pedig alatta van. Amikor a vonal közelébe kerül – ezek a fel- ill. leszálló csomópontok –, akkor figyelhető meg a napfogyatkozás.) A Hold átmérője 400-szor kisebb a Napénál, ám 400-szor közelebb is van, ez okozza, hogy a Nap és a Hold látszólagos átmérője közel azonos, így amikor megfelelő helyzetbe kerülnek az égitestek, akkor a Hold teljesen képes eltakarni a Napot.', 0),
(25, 'törlendő', 'd', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(9, 'kisa', 'kisa@gmail.com', '1c0d894f6f6ab511099a568f6e876c2f'),
(10, 'nagyb', 'nagyb@gmail.com', '23eecef5b43bb6d601449a1ae6f01bd1'),
(11, 'mn', 'mn@gmail.com', '412566367c67448b599d1b7666f8ccfc'),
(12, 'Kamilla', 'kamilla@gmail.com', '870f4f7827a85c1eb93bb583a6c9c293'),
(13, 'Mónika', 'moni@gmail.com', '735735aa594d4a2eda923d866879d5f2'),
(14, 'Andris', 'andris@gmail.com', 'd6270c0e7dea8b3fc5b3d02f4ff30b8f');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- A tábla indexei `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT a táblához `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
