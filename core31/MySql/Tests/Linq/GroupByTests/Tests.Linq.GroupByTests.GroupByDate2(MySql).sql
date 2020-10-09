BeforeExecute
-- SQLite.MS SQLite

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
-- MySql MySql.Official MySql

SELECT 
	Sum(`t1`.`MoneyValue`), 
	`t1`.`c2`, 
	`t1`.`c1`
FROM
	( 
		SELECT 
			Extract(month from `selectParam`.`DateTimeValue`) as `c1`, 
			Extract(year from `selectParam`.`DateTimeValue`) as `c2`, 
			`selectParam`.`MoneyValue`
		FROM
			`LinqDataTypes` `selectParam`
	) `t1`
GROUP BY
	`t1`.`c1`,
	`t1`.`c2`

