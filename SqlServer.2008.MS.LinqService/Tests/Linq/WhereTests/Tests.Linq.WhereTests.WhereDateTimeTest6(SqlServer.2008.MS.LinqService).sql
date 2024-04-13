BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[_].[ID],
	[_].[MoneyValue],
	[_].[DateTimeValue],
	[_].[DateTimeValue2],
	[_].[BoolValue],
	[_].[GuidValue],
	[_].[SmallIntValue],
	[_].[IntValue],
	[_].[BigIntValue],
	[_].[StringValue]
FROM
	[LinqDataTypes] [_]
WHERE
	CAST([_].[DateTimeValue] AS Date) = CAST(CAST(N'2009-09-20' AS DateTime2) AS Date)

