-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`e`.`Dec` / `j`.`Dec`
FROM
	`MissedDivisorEntity` `e`
		LEFT JOIN `MissedDivisorEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

