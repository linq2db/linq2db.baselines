BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	SUM(`grp_1`.`MoneyValue`),
	`grp_1`.`Year_2`,
	`grp_1`.`Month_2`
FROM
	(
		SELECT
			Extract(month from `grp`.`DateTimeValue`) as `Month_1`,
			Extract(year from `grp`.`DateTimeValue`) as `Year_1`,
			`grp`.`MoneyValue`,
			Extract(year from `grp`.`DateTimeValue`) as `Year_2`,
			Extract(month from `grp`.`DateTimeValue`) as `Month_2`
		FROM
			`LinqDataTypes` `grp`
	) `grp_1`
GROUP BY
	`grp_1`.`Month_1`,
	`grp_1`.`Year_1`,
	`grp_1`.`Year_2`,
	`grp_1`.`Month_2`

