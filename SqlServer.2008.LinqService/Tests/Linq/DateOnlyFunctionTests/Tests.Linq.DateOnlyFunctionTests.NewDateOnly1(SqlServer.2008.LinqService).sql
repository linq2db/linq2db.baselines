BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	CAST(RIGHT('0' + CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(4)), 4) + N'-10-01' AS Date)
FROM
	[LinqDataTypes] [t]

