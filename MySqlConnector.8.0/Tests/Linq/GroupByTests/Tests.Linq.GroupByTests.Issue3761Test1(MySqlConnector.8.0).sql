-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Year_1`,
	`t1`.`Month_1`,
	SUM(`t1`.`SKUPAJ`)
FROM
	(
		SELECT
			Extract(year from CASE
				WHEN `n`.`DATUM` IS NOT NULL THEN `n`.`DATUM`
				ELSE '0001-01-01'
			END) as `Year_1`,
			Extract(month from CASE
				WHEN `n`.`DATUM` IS NOT NULL THEN `n`.`DATUM`
				ELSE '0001-01-01'
			END) as `Month_1`,
			`n`.`SKUPAJ`
		FROM
			`Issue3761Table` `n`
		WHERE
			`n`.`DATUM` < STR_TO_DATE('2019-01-01 00:00:00.000', '%Y-%m-%d %H:%i:%s.%f')
	) `t1`
GROUP BY
	`t1`.`Year_1`,
	`t1`.`Month_1`

