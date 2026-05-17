-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`IntHolder`,
	`r`.`LongHolder`
FROM
	`HolderTable` `r`
WHERE
	`r`.`IntHolder` + 3 = 5 AND `r`.`LongHolder` + 3 = 5

