BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	CAST(RIGHT('0' + CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(4)), 4) + N'-10-01' AS DateTime)
FROM
	[LinqDataTypes] [t]

