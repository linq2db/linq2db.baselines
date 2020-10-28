BeforeExecute
-- SqlCe

SELECT
	Convert(Datetime, Convert(NVarChar(11), DatePart(year, [p].[DateTimeValue])) + '-10-1')
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(month, Convert(Datetime, Convert(NVarChar(11), DatePart(year, [p].[DateTimeValue])) + '-10-1')) = 10

