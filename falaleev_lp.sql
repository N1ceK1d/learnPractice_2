-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 27 2023 г., 10:57
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `falaleev_lp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Bosses`
--

CREATE TABLE `Bosses` (
  `id` int NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `experience` int NOT NULL,
  `department_id` int NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Bosses`
--

INSERT INTO `Bosses` (`id`, `fullname`, `experience`, `department_id`, `login`, `password`) VALUES
(1, 'Уваров Леонид Христофорович', 30, 1, 'boss_1', '7654321'),
(2, 'Сафонов Лаврентий Протасьевич', 35, 2, 'boss_2', '7654321'),
(3, 'Сергеев Пантелеймон Михайлович', 40, 3, 'boss_3', '7654321'),
(4, 'Исаков Захар Аркадьевич', 28, 4, 'boss_4', '7654321');

-- --------------------------------------------------------

--
-- Структура таблицы `Customers`
--

CREATE TABLE `Customers` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `discount` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Customers`
--

INSERT INTO `Customers` (`id`, `name`, `country`, `discount`) VALUES
(1, 'ООО \"РемКомплект\"', 'Россия', 10),
(2, 'АОА \"МашинСтрой\"', 'Казахстан', 5),
(3, 'ООО \"КиргизияСила\"', 'Киргизия', 3),
(4, 'ООО \"ГнилаяЖелезяка\"', 'Россия', 12),
(5, 'ОАО \"Картофелемобиль\"', 'Беларусь', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `Departments`
--

CREATE TABLE `Departments` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Departments`
--

INSERT INTO `Departments` (`id`, `name`) VALUES
(1, 'Исследовательский'),
(2, 'Научный'),
(3, 'Технический'),
(4, 'Производственный');

-- --------------------------------------------------------

--
-- Структура таблицы `Employees`
--

CREATE TABLE `Employees` (
  `id` int NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `experience` int NOT NULL,
  `department_id` int NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Employees`
--

INSERT INTO `Employees` (`id`, `fullname`, `experience`, `department_id`, `login`, `password`) VALUES
(1, 'Ефремов Альберт Борисович', 13, 1, 'employee_1', '1234567'),
(2, 'Воробьёв Лукьян Дамирович', 22, 2, 'employee_2', '1234567'),
(3, 'Кулагин Георгий Юрьевич', 20, 3, 'employee_3', '1234567'),
(4, 'Прохоров Ярослав Эдуардович', 10, 4, 'employee_4', '1234567'),
(5, 'Титов Ипполит Алексеевич', 8, 4, 'employee_5', '1234567'),
(6, 'Марков Моисей Парфеньевич', 1, 2, 'employee_6', '1234567'),
(7, 'Титов Мартин Демьянович', 10, 4, 'employee_7', '1234567'),
(8, 'Шашкова Изольда Федосеевна', 14, 3, 'employee_8', '1234567'),
(9, 'Коновалова Лика Даниловна', 6, 3, 'employee_9', '1234567'),
(10, 'Прохорова Нева Мироновна', 23, 4, 'employee_10', '1234567'),
(11, 'Лебедева Эллада Федосеевна', 23, 4, 'employee_11', '1234567'),
(12, 'Архипова Азиза Владиславовна', 12, 2, 'employee_12', '1234567'),
(13, 'Гришина Герда Валерьевна', 1, 4, 'employee_13', '1234567'),
(14, 'Афанасьева Рамина Онисимовна', 21, 1, 'employee_14', '1234567'),
(15, 'Лебедева Наталия Геласьевна', 8, 4, 'employee_15', '1234567'),
(16, 'Иванкова Биргит Васильевна', 6, 2, 'employee_16', '1234567'),
(17, 'Попова Северина Михайловна', 7, 4, 'employee_17', '1234567'),
(18, 'Романова Аида Даниловна', 10, 1, 'employee_18', '1234567'),
(19, 'Мясникова Юзефа Якововна', 8, 2, 'employee_19', '1234567'),
(20, 'Субботин Влас Олегович', 3, 4, 'employee_20', '1234567'),
(21, 'Мясников Дональд Евгеньевич', 21, 1, 'employee_21', '1234567'),
(22, 'Большаков Гордий Данилович', 23, 4, 'employee_22', '1234567'),
(23, 'Михеев Мирон Рубенович', 6, 3, 'employee_23', '1234567'),
(24, 'Петухов Лев Протасьевич', 26, 2, 'employee_24', '1234567'),
(25, 'Сафонов Федор Тихонович', 1, 4, 'employee_25', '1234567'),
(26, 'Емельянов Виктор Феликсович', 2, 1, 'employee_26', '1234567'),
(27, 'Григорьев Виссарион Станиславович', 7, 3, 'employee_27', '1234567'),
(28, 'Баранов Ефрем Валерьевич', 14, 2, 'employee_28', '1234567'),
(29, 'Лобанов Овидий Андреевич', 20, 4, 'employee_29', '1234567'),
(30, 'Зыков Роман Донатович', 10, 3, 'employee_30', '1234567'),
(31, 'Маслов Ким Богданович', 8, 4, 'employee_31', '1234567'),
(32, 'Дмитриев Сергей Платонович', 18, 4, 'employee_32', '1234567'),
(33, 'Носков Алан Вадимович', 23, 2, 'employee_33', '1234567'),
(34, 'Ситников Вилли Иванович', 23, 3, 'employee_34', '1234567'),
(35, 'Лукин Панкрат Антонович', 12, 4, 'employee_35', '1234567'),
(36, 'Морозов Дмитрий Яковлевич', 1, 1, 'employee_36', '1234567'),
(37, 'Карпов Геннадий Платонович', 7, 4, 'employee_37', '1234567'),
(38, 'Дементьев Алан Павлович', 14, 4, 'employee_38', '1234567'),
(39, 'Меркушев Панкратий Наумович', 20, 2, 'employee_39', '1234567'),
(40, 'Ершов Мечислав Андреевич', 10, 1, 'employee_40', '1234567'),
(41, 'Субботин Денис Игнатьевич', 26, 3, 'employee_41', '1234567'),
(42, 'Ершов Соломон Яковлевич', 1, 4, 'employee_42', '1234567'),
(43, 'Макаров Захар Митрофанович', 2, 4, 'employee_43', '1234567'),
(44, 'Елисеев Рубен Тимофеевич', 7, 2, 'employee_44', '1234567'),
(45, 'Гущин Вениамин Егорович', 14, 3, 'employee_45', '1234567'),
(46, 'Устинов Назарий Мэлорович', 20, 4, 'employee_46', '1234567'),
(47, 'Егоров Матвей Константинович', 10, 2, 'employee_47', '1234567'),
(48, 'Большаков Роман Проклович', 25, 1, 'employee_48', '1234567'),
(49, 'Иванов Устин Куприянович', 23, 4, 'employee_49', '1234567'),
(50, 'Фомин Лука Геннадиевич', 23, 2, 'employee_50', '1234567'),
(51, 'Щукин Флор Митрофанович', 12, 4, 'employee_51', '1234567'),
(52, 'Пестов Орест Мэлорович', 1, 1, 'employee_52', '1234567'),
(53, 'Громов Венедикт Михайлович', 19, 3, 'employee_53', '1234567'),
(54, 'Емельянов Леонид Мэлорович', 20, 2, 'employee_54', '1234567'),
(55, 'Антонов Адриан Мэлорович', 10, 1, 'employee_55', '1234567'),
(56, 'Ситников Леонтий Тимофеевич', 25, 4, 'employee_56', '1234567'),
(57, 'Большаков Даниил Платонович', 14, 3, 'employee_57', '1234567'),
(58, 'Попов Петр Ефимович', 18, 1, 'employee_58', '1234567'),
(59, 'Данилов Яков Робертович', 8, 4, 'employee_59', '1234567'),
(60, 'Богданов Кирилл Матвеевич', 4, 2, 'employee_60', '1234567'),
(61, 'Виноградова Авигея Павловна', 9, 3, 'employee_61', '1234567'),
(62, 'Аксёнова Наталья Ивановна', 23, 4, 'employee_62', '1234567'),
(63, 'Антонова Альберта Платоновна', 23, 2, 'employee_63', '1234567'),
(64, 'Лобанова Надежда Якуновна', 12, 1, 'employee_64', '1234567'),
(65, 'Шилова Илзе Филипповна', 1, 4, 'employee_65', '1234567'),
(66, 'Кондратьева Санда Станиславовна', 9, 2, 'employee_66', '1234567'),
(67, 'Якушева Марта Авксентьевна', 23, 3, 'employee_67', '1234567'),
(68, 'Щербакова Устинья Дмитрьевна', 7, 1, 'employee_68', '1234567'),
(69, 'Дорофеева Фаня Вадимовна', 16, 2, 'employee_69', '1234567'),
(70, 'Морозова Фелиция Васильевна', 26, 4, 'employee_70', '1234567'),
(71, 'Марков Болеслав Оскарович', 1, 4, 'employee_71', '1234567'),
(72, 'Федосеев Иван Николаевич', 2, 4, 'employee_72', '1234567'),
(73, 'Русаков Иннокентий Сергеевич', 9, 1, 'employee_73', '1234567'),
(74, 'Марков Ким Максович', 23, 4, 'employee_74', '1234567'),
(75, 'Королёв Витольд Лаврентьевич', 23, 3, 'employee_75', '1234567'),
(76, 'Овчинников Трофим Артемович', 12, 2, 'employee_76', '1234567'),
(77, 'Зуев Исак Тихонович', 1, 4, 'employee_77', '1234567'),
(78, 'Александров Аввакуум Федотович', 10, 1, 'employee_78', '1234567'),
(79, 'Блохин Николай Андреевич', 12, 2, 'employee_79', '1234567'),
(80, 'Белозёров Аверкий Давидович', 9, 3, 'employee_80', '1234567'),
(81, 'Родионов Донат Якунович', 23, 4, 'employee_81', '1234567'),
(82, 'Мельников Осип Авксентьевич', 13, 3, 'employee_82', '1234567'),
(83, 'Абрамова Эльвина Лукьевна', 4, 1, 'employee_83', '1234567'),
(84, 'Данилова Индира Львовна', 9, 4, 'employee_84', '1234567'),
(85, 'Носкова Аэлита Адольфовна', 25, 2, 'employee_85', '1234567'),
(86, 'Голубева Мишель Ильяовна', 20, 3, 'employee_86', '1234567'),
(87, 'Кондратьева Августа Гордеевна', 4, 4, 'employee_87', '1234567'),
(88, 'Титова Эльвира Валерьевна', 23, 3, 'employee_88', '1234567'),
(89, 'Князева Анита Евгеньевна', 26, 1, 'employee_89', '1234567'),
(90, 'Соколова Калерия Тимофеевна', 1, 2, 'employee_90', '1234567'),
(91, 'Белозёрова Регина Улебовна', 2, 4, 'employee_91', '1234567'),
(92, 'Фролова Амалия Георгьевна', 17, 1, 'employee_92', '1234567'),
(93, 'Ларионова Альжбета Ильяовна', 9, 3, 'employee_93', '1234567'),
(94, 'Колобова Сабина Семеновна', 23, 2, 'employee_94', '1234567'),
(95, 'Большакова Анжела Геннадьевна', 3, 3, 'employee_95', '1234567'),
(96, 'Максимова Надежда Константиновна', 23, 1, 'employee_96', '1234567'),
(97, 'Харитонова Береслава Владленовна', 12, 4, 'employee_97', '1234567'),
(98, 'Носкова Джульетта Вадимовна', 1, 1, 'employee_98', '1234567'),
(99, 'Владимирова Жюли Альбертовна', 9, 3, 'employee_99', '1234567'),
(100, 'Шубина Жаклин Иосифовна', 8, 4, 'employee_100', '1234567');

-- --------------------------------------------------------

--
-- Структура таблицы `Orders`
--

CREATE TABLE `Orders` (
  `id` int NOT NULL,
  `order_date` date NOT NULL,
  `scope_of_work` int NOT NULL,
  `customer_id` int NOT NULL,
  `department_id` int NOT NULL,
  `spare_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Orders`
--

INSERT INTO `Orders` (`id`, `order_date`, `scope_of_work`, `customer_id`, `department_id`, `spare_id`) VALUES
(1, '2023-01-19', 1, 1, 2, 2),
(2, '2023-07-21', 1, 3, 2, 3),
(3, '2023-10-23', 2, 5, 3, 1),
(4, '2023-03-15', 3, 2, 1, 4),
(5, '2023-12-01', 2, 1, 4, 3),
(6, '2023-07-04', 4, 4, 3, 1),
(7, '2023-07-08', 2, 5, 2, 1),
(8, '2023-09-12', 1, 2, 1, 4),
(9, '2023-11-06', 3, 3, 4, 2),
(10, '2023-06-17', 1, 4, 4, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `Parts`
--

CREATE TABLE `Parts` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `spare_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Parts`
--

INSERT INTO `Parts` (`id`, `name`, `price`, `spare_id`) VALUES
(12, 'Петля для дверей', 1200, 1),
(13, 'Дверной замок', 3000, 1),
(14, 'Ручка дверей', 1000, 1),
(15, 'Кабель аккумулятора', 500, 2),
(16, 'Батарея аккумулятора', 4000, 2),
(17, 'Корпус аккумулятора', 1500, 2),
(18, 'Привод стартера', 1000, 3),
(19, 'Шестерня стартера', 1500, 3),
(20, 'Днище поршня', 500, 4),
(21, 'Уплотняющая часть поршня', 1500, 4),
(22, 'Направляющая часть поршня', 1500, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `SpareParts`
--

CREATE TABLE `SpareParts` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `SpareParts`
--

INSERT INTO `SpareParts` (`id`, `name`, `price`) VALUES
(1, 'Двери', 12000),
(2, 'Аккумулятор', 7000),
(3, 'Стартер', 6500),
(4, 'Поршень', 4000);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Bosses`
--
ALTER TABLE `Bosses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Индексы таблицы `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Departments`
--
ALTER TABLE `Departments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Индексы таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `spare_id` (`spare_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Индексы таблицы `Parts`
--
ALTER TABLE `Parts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spare_id` (`spare_id`);

--
-- Индексы таблицы `SpareParts`
--
ALTER TABLE `SpareParts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Bosses`
--
ALTER TABLE `Bosses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Customers`
--
ALTER TABLE `Customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Departments`
--
ALTER TABLE `Departments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Employees`
--
ALTER TABLE `Employees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `Orders`
--
ALTER TABLE `Orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `Parts`
--
ALTER TABLE `Parts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `SpareParts`
--
ALTER TABLE `SpareParts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Bosses`
--
ALTER TABLE `Bosses`
  ADD CONSTRAINT `bosses_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `Departments` (`id`);

--
-- Ограничения внешнего ключа таблицы `Employees`
--
ALTER TABLE `Employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `Departments` (`id`);

--
-- Ограничения внешнего ключа таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`spare_id`) REFERENCES `SpareParts` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`department_id`) REFERENCES `Departments` (`id`);

--
-- Ограничения внешнего ключа таблицы `Parts`
--
ALTER TABLE `Parts`
  ADD CONSTRAINT `parts_ibfk_1` FOREIGN KEY (`spare_id`) REFERENCES `SpareParts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
