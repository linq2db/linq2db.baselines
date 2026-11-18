-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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
	CASE
		WHEN [t1].[DateTimeValue] IS NOT NULL THEN DateValue([t1].[DateTimeValue])
		ELSE NULL
	END = DateValue(DateSerial(2009, 9, 20))

