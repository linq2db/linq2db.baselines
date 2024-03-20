BeforeExecute
-- SqlCe

SELECT
	Convert(NVarChar(11), DatePart(hour, [t].[DateTimeValue])) + ':01:01' as [c1]
FROM
	[LinqDataTypes] [t]

