BeforeExecute
-- SqlCe

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
	CAST(CONVERT(NVarChar(10), [_].[DateTimeValue], 101) AS DateTime) = CAST(CONVERT(NVarChar(10), CAST('2009-09-20' AS DateTime), 101) AS DateTime)

