BeforeExecute
-- SqlCe

SELECT
	Convert(DateTime, Convert(NVarChar(11), DatePart(year, [t].[DateTimeValue])) + '-01-01 00:20:00') as [c1]
FROM
	[LinqDataTypes] [t]

