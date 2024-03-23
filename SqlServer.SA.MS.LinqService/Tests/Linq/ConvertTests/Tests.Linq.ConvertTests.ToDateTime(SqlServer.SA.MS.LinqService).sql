BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + N'-01-01 00:00:00'
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(day, Convert(DateTime2, Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + N'-01-01 00:00:00')) > 0

