BeforeExecute
-- SqlCe

SELECT
	Convert(DateTime, Convert(NVarChar(11), DatePart(year, [t].[DateTimeValue])) + '-01-01 00:00:00')
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(day, Convert(DateTime, Convert(NVarChar(11), DatePart(year, [t].[DateTimeValue])) + '-01-01 00:00:00')) > 0

