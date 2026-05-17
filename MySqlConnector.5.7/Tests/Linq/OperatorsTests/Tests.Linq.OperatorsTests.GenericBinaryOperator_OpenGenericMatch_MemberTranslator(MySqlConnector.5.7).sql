-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`IntHolder`,
	`r`.`LongHolder`
FROM
	`HolderTable` `r`
WHERE
	`r`.`IntHolder` + 3 = 5 AND `r`.`LongHolder` + 3 = 5

