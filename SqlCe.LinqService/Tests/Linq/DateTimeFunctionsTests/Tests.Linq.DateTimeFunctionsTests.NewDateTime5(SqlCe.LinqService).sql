BeforeExecute
-- SqlCe

SELECT
	DatePart(year, [t].[DateTimeValue]) + 1 as [c1]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(month, CAST(REPLICATE('0', 4 - LEN(CAST(DatePart(year, [t].[DateTimeValue]) + 1 AS NVarChar(4)))) + CAST(DatePart(year, [t].[DateTimeValue]) + 1 AS NVarChar(4)) + '-10-01' AS DateTime)) = 10

