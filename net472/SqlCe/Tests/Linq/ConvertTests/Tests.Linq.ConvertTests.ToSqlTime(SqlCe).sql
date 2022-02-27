BeforeExecute
-- SqlCe

SELECT
	Convert(NVarChar(100), DatePart(hour, [t].[DateTimeValue])) + ':01:01'
FROM
	[LinqDataTypes] [t]

