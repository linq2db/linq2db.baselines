BeforeExecute
-- SqlCe

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue] as [Value_1],
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
	CAST(CONVERT(NVarChar(10), [t1].[DateTimeValue], 101) AS DateTime) = CAST(CONVERT(NVarChar(10), CAST('2009-09-20' AS DateTime), 101) AS DateTime)

