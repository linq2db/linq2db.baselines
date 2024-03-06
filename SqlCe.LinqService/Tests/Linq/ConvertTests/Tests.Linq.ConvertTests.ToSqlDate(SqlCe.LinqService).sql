BeforeExecute
-- SqlCe

SELECT
	Convert(Datetime, Convert(NVarChar(11), DatePart(year, [t].[DateTimeValue])) + '-01-01') as [c1]
FROM
	[LinqDataTypes] [t]

