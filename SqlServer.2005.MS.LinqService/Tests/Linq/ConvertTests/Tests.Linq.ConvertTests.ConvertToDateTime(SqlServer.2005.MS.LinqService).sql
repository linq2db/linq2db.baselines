BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + N'-01-01 00:00:00'
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(day, Convert(DateTime, Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + N'-01-01 00:00:00')) > 0

