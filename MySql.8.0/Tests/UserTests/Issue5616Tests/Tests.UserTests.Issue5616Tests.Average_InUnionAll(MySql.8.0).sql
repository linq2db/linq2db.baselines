-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CAST(0 AS DOUBLE)
FROM
	`Table1` `t1`
UNION ALL
SELECT
	AVG(`g_1`.`Id`)
FROM
	`Table2` `g_1`
GROUP BY
	`g_1`.`Id`

