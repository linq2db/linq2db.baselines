BeforeExecute
-- SqlServer.2005

SELECT
	Convert(DateTime, Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + N'-10-1 20:35:44', 120)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(month, Convert(DateTime, Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + N'-10-1 20:35:44', 120)) = 10

