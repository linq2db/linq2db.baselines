BeforeExecute
-- SqlServer.2005

SELECT
	Convert(DateTime, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-02-24 00:00:00', 120)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(day, Convert(DateTime, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-02-24 00:00:00', 120)) > 0

