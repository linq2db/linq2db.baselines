BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Sum(`selectParam`.`MoneyValue`),
	Extract(year from Cast(Concat(Cast(Extract(year from `selectParam`.`DateTimeValue`) as CHAR(11)), '-', Cast(Extract(month from `selectParam`.`DateTimeValue`) as CHAR(11)), '-1') as Date)),
	Extract(month from Cast(Concat(Cast(Extract(year from `selectParam`.`DateTimeValue`) as CHAR(11)), '-', Cast(Extract(month from `selectParam`.`DateTimeValue`) as CHAR(11)), '-1') as Date))
FROM
	`LinqDataTypes` `selectParam`
GROUP BY
	Cast(Concat(Cast(Extract(year from `selectParam`.`DateTimeValue`) as CHAR(11)), '-', Cast(Extract(month from `selectParam`.`DateTimeValue`) as CHAR(11)), '-1') as Date)

