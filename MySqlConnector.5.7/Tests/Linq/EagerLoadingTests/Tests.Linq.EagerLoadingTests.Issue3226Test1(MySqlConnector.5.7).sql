-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`Id`,
	`x`.`Text`
FROM
	`Item` `x`
ORDER BY
	Coalesce((
		SELECT
			Coalesce(SUM(`a_Values`.`Value`), 0)
		FROM
			`ItemValue` `a_Values`
		WHERE
			`x`.`Id` = `a_Values`.`ItemId`
	), 0)

