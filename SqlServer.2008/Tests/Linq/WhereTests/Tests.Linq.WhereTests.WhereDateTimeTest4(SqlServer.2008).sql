BeforeExecute
-- SqlServer.2008
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = CAST('2009-09-27T00:00:00.0000000' AS DATETIME2)

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
WHERE
	[t1].[DateTimeValue] = @DateTimeValue

