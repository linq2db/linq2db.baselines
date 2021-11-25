BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Convert(DateTime2, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-01-01 00:00:00', 120)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(day, Convert(DateTime2, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-01-01 00:00:00', 120)) > 0

