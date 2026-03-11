-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `TestTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`Id`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `TestTable`

