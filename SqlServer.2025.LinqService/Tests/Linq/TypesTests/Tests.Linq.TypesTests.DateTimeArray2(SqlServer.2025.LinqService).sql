BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[DateTimeValue2],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[SmallIntValue],
	[t].[IntValue],
	[t].[BigIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[DateTimeValue] IN (DATETIMEFROMPARTS(2001, 1, 11, 1, 11, 21, 100), DATETIMEFROMPARTS(2012, 11, 7, 19, 19, 29, 90))

