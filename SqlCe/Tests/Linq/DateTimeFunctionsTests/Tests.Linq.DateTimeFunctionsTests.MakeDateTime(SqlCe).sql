-- SqlCe

SELECT
	CAST('2010-' + REPLICATE('0', 2 - LEN(CAST([t].[ID] AS NVarChar(2)))) + CAST([t].[ID] AS NVarChar(2)) + '-01' AS DateTime) as [Value_1]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, CAST('2010-' + REPLICATE('0', 2 - LEN(CAST([t].[ID] AS NVarChar(2)))) + CAST([t].[ID] AS NVarChar(2)) + '-01' AS DateTime)) = 2010

