-- SqlServer.2005.MS SqlServer.2005

SELECT
	CAST(RIGHT('0' + CAST(DatePart(year, [p].[DateTimeValue]) AS VarChar(4)), 4) + N'-10-01' AS DateTime)
FROM
	[LinqDataTypes] [p]

