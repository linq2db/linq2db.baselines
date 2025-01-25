BeforeExecute
-- SqlCe

SELECT
	CAST(DatePart(hour, [t].[DateTimeValue]) AS NVarChar(11)) + ':01:01' as [c1]
FROM
	[LinqDataTypes] [t]

