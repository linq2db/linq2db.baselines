BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	SUM(`grp_1`.`MoneyValue`),
	Extract(year from `grp_1`.`Date_1`),
	Extract(month from `grp_1`.`Date_1`)
FROM
	(
		SELECT
			STR_TO_DATE(Concat(CAST(Extract(year from `grp`.`DateTimeValue`) AS CHAR(4)), '-', LPad(CAST(Extract(month from `grp`.`DateTimeValue`) AS CHAR(2)), 2, '0'), '-01 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f') as `Date_1`,
			`grp`.`MoneyValue`
		FROM
			`LinqDataTypes` `grp`
	) `grp_1`
GROUP BY
	`grp_1`.`Date_1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	SUM(`grp_1`.`MoneyValue`),
	Extract(year from `grp_1`.`Date_1`),
	Extract(month from `grp_1`.`Date_1`)
FROM
	(
		SELECT
			STR_TO_DATE(Concat(CAST(Extract(year from `grp`.`DateTimeValue`) AS CHAR(4)), '-', LPad(CAST(Extract(month from `grp`.`DateTimeValue`) AS CHAR(2)), 2, '0'), '-01 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f') as `Date_1`,
			`grp`.`MoneyValue`
		FROM
			`LinqDataTypes` `grp`
	) `grp_1`
GROUP BY
	`grp_1`.`Date_1`

