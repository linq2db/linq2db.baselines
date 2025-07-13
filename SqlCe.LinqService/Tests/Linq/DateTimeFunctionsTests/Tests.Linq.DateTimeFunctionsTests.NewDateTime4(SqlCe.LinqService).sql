BeforeExecute
-- SqlCe

SELECT
	CAST(REPLICATE('0', 4 - LEN(CAST(DatePart(year, [p].[DateTimeValue]) AS NVarChar(4)))) + CAST(DatePart(year, [p].[DateTimeValue]) AS NVarChar(4)) + '-10-01 20:35:44.000' AS DateTime) as [c1]
FROM
	[LinqDataTypes] [p]

