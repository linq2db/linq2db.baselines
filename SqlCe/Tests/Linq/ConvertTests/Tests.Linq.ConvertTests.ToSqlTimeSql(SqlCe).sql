-- SqlCe
SELECT
	CAST(DatePart(hour, [t].[DateTimeValue]) AS NVarChar(11)) + ':01:01'
FROM
	[LinqDataTypes] [t]

