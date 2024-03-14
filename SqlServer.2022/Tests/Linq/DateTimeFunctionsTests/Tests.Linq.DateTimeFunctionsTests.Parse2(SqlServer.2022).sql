BeforeExecute
-- SqlServer.2022

SELECT
	Convert(DateTime2, Convert(VarChar(11), DatePart(year, [d].[DateTimeValue])) + N'-02-24 00:00:00')
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, Convert(DateTime2, Convert(VarChar(11), DatePart(year, [d].[DateTimeValue])) + N'-02-24 00:00:00')) > 0

