BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`Day_2`
FROM
	(
		SELECT
			Extract(day from CAST(Concat(Extract(year from `t`.`DateTimeValue`), '-01-01 00:00:00') AS DATETIME)) as `Day_1`,
			CAST(Concat(Extract(year from `t`.`DateTimeValue`), '-01-01 00:00:00') AS DATETIME) as `Day_2`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	`p`.`Day_1` > 0 AND `p`.`Day_1` IS NOT NULL

