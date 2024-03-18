BeforeExecute
-- SqlCe

SELECT
	Convert(NVarChar(11), DatePart(year, [p].[DateTimeValue])) + '-01-01 00:00:00' as [c1]
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(day, Convert(DateTime, Convert(NVarChar(11), DatePart(year, [p].[DateTimeValue])) + '-01-01 00:00:00')) > 0

