-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT DISTINCT
	`r`.`F1`,
	`r`.`F2`
FROM
	`DistinctOrderByTable` `r`
ORDER BY
	`r`.`F1` DESC,
	`r`.`F2`

