BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Convert(DateTime, Convert(VarChar(11), DatePart(year, [d].[DateTimeValue])) + N'-02-24 00:00:00')
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, Convert(DateTime, Convert(VarChar(11), DatePart(year, [d].[DateTimeValue])) + N'-02-24 00:00:00')) > 0

