-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TEMPORARY TABLE `T_9a713e614c63`
(
	`Id`   INT           NOT NULL,
	`Data` VARCHAR(4000)     NULL
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `T_9a713e614c63`
(
	`Id`,
	`Data`
)
VALUES
(0,'Data 0'),
(1,'Data 1'),
(2,'Data 2'),
(3,'Data 3'),
(4,'Data 4'),
(5,'Data 5'),
(6,'Data 6'),
(7,'Data 7'),
(8,'Data 8'),
(9,'Data 9'),
(10,'Data 10'),
(11,'Data 11'),
(12,'Data 12'),
(13,'Data 13'),
(14,'Data 14'),
(15,'Data 15'),
(16,'Data 16'),
(17,'Data 17'),
(18,'Data 18'),
(19,'Data 19'),
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22'),
(23,'Data 23'),
(24,'Data 24'),
(25,'Data 25'),
(26,'Data 26'),
(27,'Data 27'),
(28,'Data 28'),
(29,'Data 29')

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`r`.`Id`,
	`r`.`Data`
FROM
	`Person` `x`
		CROSS JOIN `T_9a713e614c63` `r`
WHERE
	`x`.`PersonID` = 1
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TEMPORARY TABLE IF EXISTS `T_9a713e614c63`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TEMPORARY TABLE `T_9a713e614c63`
(
	`Id`   INT           NOT NULL,
	`Data` VARCHAR(4000)     NULL
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `T_9a713e614c63`
(
	`Id`,
	`Data`
)
VALUES
(1000,'Data 1000'),
(1001,'Data 1001'),
(1002,'Data 1002'),
(1003,'Data 1003'),
(1004,'Data 1004'),
(1005,'Data 1005'),
(1006,'Data 1006'),
(1007,'Data 1007'),
(1008,'Data 1008'),
(1009,'Data 1009'),
(1010,'Data 1010'),
(1011,'Data 1011'),
(1012,'Data 1012'),
(1013,'Data 1013'),
(1014,'Data 1014'),
(1015,'Data 1015'),
(1016,'Data 1016'),
(1017,'Data 1017'),
(1018,'Data 1018'),
(1019,'Data 1019')

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`r`.`Id`,
	`r`.`Data`
FROM
	`Person` `x`
		CROSS JOIN `T_9a713e614c63` `r`
WHERE
	`x`.`PersonID` = 1
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TEMPORARY TABLE IF EXISTS `T_9a713e614c63`

