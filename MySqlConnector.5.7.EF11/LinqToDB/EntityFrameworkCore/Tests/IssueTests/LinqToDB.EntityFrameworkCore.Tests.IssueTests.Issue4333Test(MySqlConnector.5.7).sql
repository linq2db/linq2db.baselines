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
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Identities` `t1`
ORDER BY
	`t1`.`Id`



-- MySql.5.7.MySqlConnector MySql57
DROP TEMPORARY TABLE IF EXISTS `Identities`



