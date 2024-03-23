BeforeExecute
-- MySqlConnector MySql

SELECT
	SUM(`grp_1`.`MoneyValue`),
	`grp_1`.`Year_1`,
	`grp_1`.`Month_1`
FROM
	(
		SELECT
			Cast(Concat(Lpad(Extract(year from `grp`.`DateTimeValue`),4,'0'), '-', Lpad(Extract(month from `grp`.`DateTimeValue`),2,'0'), '-01') as Date) as `c1`,
			`grp`.`MoneyValue`,
			Extract(year from Cast(Concat(Lpad(Extract(year from `grp`.`DateTimeValue`),4,'0'), '-', Lpad(Extract(month from `grp`.`DateTimeValue`),2,'0'), '-01') as Date)) as `Year_1`,
			Extract(month from Cast(Concat(Lpad(Extract(year from `grp`.`DateTimeValue`),4,'0'), '-', Lpad(Extract(month from `grp`.`DateTimeValue`),2,'0'), '-01') as Date)) as `Month_1`
		FROM
			`LinqDataTypes` `grp`
	) `grp_1`
GROUP BY
	`grp_1`.`c1`,
	`grp_1`.`Year_1`,
	`grp_1`.`Month_1`

