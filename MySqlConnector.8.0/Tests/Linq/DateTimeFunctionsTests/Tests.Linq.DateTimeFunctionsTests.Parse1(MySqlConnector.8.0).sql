BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`d`.`Date_1`
FROM
	(
		SELECT
			Extract(day from `t`.`DateTimeValue`) as `Day_1`,
			Date(`t`.`DateTimeValue`) as `Date_1`
		FROM
			`LinqDataTypes` `t`
	) `d`
WHERE
	`d`.`Day_1` > 0 AND `d`.`Day_1` IS NOT NULL

