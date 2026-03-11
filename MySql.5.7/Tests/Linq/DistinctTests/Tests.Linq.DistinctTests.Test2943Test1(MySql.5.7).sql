-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT DISTINCT
	`r`.`F1`,
	`r`.`F2`
FROM
	`DistinctOrderByTable` `r`
ORDER BY
	`r`.`F1` DESC,
	`r`.`F2`

