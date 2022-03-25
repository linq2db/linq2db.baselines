BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Sum(`t1`.`MoneyValue`),
	Extract(year from `t1`.`c1`),
	Extract(month from `t1`.`c1`)
FROM
	(
		SELECT
			Cast(Concat(CASE
				WHEN Extract(year from `selectParam`.`DateTimeValue`) IS NULL
					THEN ''
				ELSE Cast(Extract(year from `selectParam`.`DateTimeValue`) as CHAR(11))
			END, '-', CASE
				WHEN Extract(month from `selectParam`.`DateTimeValue`) IS NULL
					THEN ''
				ELSE Cast(Extract(month from `selectParam`.`DateTimeValue`) as CHAR(11))
			END, '-1') as Date) as `Key_1`,
			`selectParam`.`MoneyValue`,
			Cast(Concat(CASE
				WHEN Extract(year from `selectParam`.`DateTimeValue`) IS NULL
					THEN ''
				ELSE Cast(Extract(year from `selectParam`.`DateTimeValue`) as CHAR(11))
			END, '-', CASE
				WHEN Extract(month from `selectParam`.`DateTimeValue`) IS NULL
					THEN ''
				ELSE Cast(Extract(month from `selectParam`.`DateTimeValue`) as CHAR(11))
			END, '-1') as Date) as `c1`
		FROM
			`LinqDataTypes` `selectParam`
	) `t1`
GROUP BY
	`t1`.`Key_1`

