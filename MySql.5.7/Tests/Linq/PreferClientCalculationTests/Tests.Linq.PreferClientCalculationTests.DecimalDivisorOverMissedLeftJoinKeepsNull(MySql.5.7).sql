-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`e`.`Dec` / `j`.`Dec`
FROM
	`MissedDivisorEntity` `e`
		LEFT JOIN `MissedDivisorEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

