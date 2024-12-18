BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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

