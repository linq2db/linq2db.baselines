BeforeExecute
-- SqlCe

SELECT
	DatePart(year, [t].[DateTimeValue]) as [Year_1]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(month, CAST(REPLICATE('0', 4 - LEN(CAST(DatePart(year, [t].[DateTimeValue]) AS NVarChar(4)))) + CAST(DatePart(year, [t].[DateTimeValue]) AS NVarChar(4)) + '-10-01 20:35:44.000' AS DateTime)) = 10

