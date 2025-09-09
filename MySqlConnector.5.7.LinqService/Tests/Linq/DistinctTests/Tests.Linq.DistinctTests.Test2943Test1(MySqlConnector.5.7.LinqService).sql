BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT DISTINCT
	`r`.`F1`,
	`r`.`F2`
FROM
	`DistinctOrderByTable` `r`
ORDER BY
	`r`.`F1` DESC,
	`r`.`F2`

