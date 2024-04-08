BeforeExecute
-- SqlCe

SELECT
	[_].[ID],
	[_].[MoneyValue],
	[_].[DateTimeValue],
	[_].[BoolValue],
	[_].[GuidValue],
	[_].[BinaryValue],
	[_].[SmallIntValue],
	[_].[StringValue]
FROM
	[LinqDataTypes] [_]
WHERE
	CAST(CONVERT(NVarChar(10), [_].[DateTimeValue], 101) AS DateTime) = CAST(CONVERT(NVarChar(10), CAST('2009-09-20' AS DateTime), 101) AS DateTime)

