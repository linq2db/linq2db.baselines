-- MySql.5.7.MySqlConnector MySql57
CREATE TEMPORARY TABLE `Identities`
(
	`Id`   int         AUTO_INCREMENT NOT NULL,
	`Name` varchar(50)                NOT NULL,

	CONSTRAINT `PK_Identities` PRIMARY KEY CLUSTERED (`Id`)
)



-- MySql.5.7.MySqlConnector MySql57
INSERT INTO `Identities`
(
	`Name`
)
VALUES
('Bar'),
('Baz')



-- MySql.5.7.MySqlConnector MySql57
SELECT
	COUNT(*)
FROM
	`Identities` `t1`



-- MySql.5.7.MySqlConnector MySql57
SELECT
	`e`.`Name`
FROM
	`Identities` `e`
ORDER BY
	`e`.`Id`



-- MySql.5.7.MySqlConnector MySql57
DROP TEMPORARY TABLE IF EXISTS `Identities`



