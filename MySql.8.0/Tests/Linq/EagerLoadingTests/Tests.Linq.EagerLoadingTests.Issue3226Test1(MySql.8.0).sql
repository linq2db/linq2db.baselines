-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`Id`,
	`x`.`Text`
FROM
	`Item` `x`
ORDER BY
	Coalesce((
		SELECT
			SUM(`a_Values`.`Value`)
		FROM
			`ItemValue` `a_Values`
		WHERE
			`x`.`Id` = `a_Values`.`ItemId`
	), 0)

