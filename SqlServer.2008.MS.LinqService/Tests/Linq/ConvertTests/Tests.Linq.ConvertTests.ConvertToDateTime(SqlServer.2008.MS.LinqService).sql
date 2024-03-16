BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + N'-01-01 00:00:00'
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(day, Convert(DateTime2, Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + N'-01-01 00:00:00')) > 0

