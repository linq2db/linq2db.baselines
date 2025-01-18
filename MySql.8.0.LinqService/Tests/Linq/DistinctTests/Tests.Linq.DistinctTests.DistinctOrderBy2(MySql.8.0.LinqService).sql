BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t2`.`F2`
FROM
	(
		SELECT DISTINCT
			`t1`.`F1`,
			`t1`.`F2`
		FROM
			`DistinctOrderByTable` `t1`
	) `t2`
ORDER BY
	`t2`.`F1` DESC

