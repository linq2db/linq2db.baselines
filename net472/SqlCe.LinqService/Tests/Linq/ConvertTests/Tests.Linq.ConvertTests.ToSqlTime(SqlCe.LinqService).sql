BeforeExecute
-- SqlCe

SELECT 
	Convert(NVarChar(11), DatePart(hour, [t].[DateTimeValue])) + ':01:01'
FROM
	[LinqDataTypes] [t]

