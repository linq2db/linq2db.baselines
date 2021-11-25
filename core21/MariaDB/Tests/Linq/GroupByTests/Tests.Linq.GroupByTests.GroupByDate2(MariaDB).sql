BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[DateTimeValue2],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[SmallIntValue],
	[t1].[IntValue],
	[t1].[BigIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Sum(`selectParam`.`MoneyValue`),
	Extract(year from `selectParam`.`DateTimeValue`),
	Extract(month from `selectParam`.`DateTimeValue`)
FROM
	`LinqDataTypes` `selectParam`
GROUP BY
	Extract(month from `selectParam`.`DateTimeValue`),
	Extract(year from `selectParam`.`DateTimeValue`)

