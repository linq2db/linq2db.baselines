BeforeExecute
-- SqlCe

SELECT
	Convert(Datetime, Convert(NVarChar(100), DatePart(year, [t].[DateTimeValue])) + '-01-01')
FROM
	[LinqDataTypes] [t]

