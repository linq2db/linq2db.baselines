-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`leftTag`.`Id`,
	`leftTag`.`FactId`,
	`leftTag`.`Name`
FROM
	`Fact` `t1`
		LEFT JOIN `Tag` `leftTag` ON `leftTag`.`FactId` = `t1`.`Id`
WHERE
	`t1`.`Id` > 3
ORDER BY
	`t1`.`Id`

