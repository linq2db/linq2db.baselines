BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	SUM(`grp_1`.`MoneyValue`),
	`grp_1`.`Year_1`,
	`grp_1`.`Month_1`
FROM
	(
		SELECT
			STR_TO_DATE(Concat(CAST(Extract(year from `grp`.`DateTimeValue`) AS CHAR(4)), '-', LPad(CAST(Extract(month from `grp`.`DateTimeValue`) AS CHAR(2)), 2, '0'), '-01 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f') as `Date_1`,
			`grp`.`MoneyValue`,
			Extract(year from `grp_1`.`Date_1`) as `Year_1`,
			Extract(month from `grp_1`.`Date_1`) as `Month_1`
		FROM
			`LinqDataTypes` `grp`
	) `grp_1`
GROUP BY
	`grp_1`.`Date_1`

