-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`Id`,
	`r`.`IntHolder`,
	`r`.`LongHolder`
FROM
	`HolderTable` `r`
WHERE
	`r`.`IntHolder` + 3 = 5 AND `r`.`LongHolder` + 3 = 5

