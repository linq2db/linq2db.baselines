BeforeExecute
-- SqlCe

SELECT
	Convert(DateTime, Convert(NVarChar(11), DatePart(year, [d].[DateTimeValue])) + '-02-24 00:00:00') as [c1]
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, Convert(DateTime, Convert(NVarChar(11), DatePart(year, [d].[DateTimeValue])) + '-02-24 00:00:00')) > 0

