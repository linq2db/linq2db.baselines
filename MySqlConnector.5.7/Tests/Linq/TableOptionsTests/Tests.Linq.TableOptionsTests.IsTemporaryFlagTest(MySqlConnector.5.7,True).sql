-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `IsTemporaryTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_IsTemporaryTable` PRIMARY KEY CLUSTERED (`Id`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`IsTemporaryTable` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `IsTemporaryTable`

