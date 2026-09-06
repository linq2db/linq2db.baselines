-- MySql.8.0.MySqlConnector MySql80
CREATE TEMPORARY TABLE `Identities`
(
	`Id`   int         AUTO_INCREMENT NOT NULL,
	`Name` varchar(50)                NOT NULL,

	CONSTRAINT `PK_Identities` PRIMARY KEY CLUSTERED (`Id`)
)



-- MySql.8.0.MySqlConnector MySql80
INSERT INTO `Identities`
(
	`Name`
)
VALUES
('Bar'),
('Baz')



-- MySql.8.0.MySqlConnector MySql80
SELECT
	COUNT(*)
FROM
	`Identities` `t1`



-- MySql.8.0.MySqlConnector MySql80
SELECT
	`e`.`Name`
FROM
	`Identities` `e`
ORDER BY
	`e`.`Id`



-- MySql.8.0.MySqlConnector MySql80
DROP TEMPORARY TABLE IF EXISTS `Identities`



