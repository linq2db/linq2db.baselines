-- SqlCe
DECLARE @Date DateTime
SET     @Date = '2009-09-20'

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue] as [Value_1],
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
	CAST(CONVERT(NVarChar(10), [t].[DateTimeValue], 101) AS DateTime) > @Date

