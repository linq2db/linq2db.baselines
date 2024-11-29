BeforeExecute
-- SqlCe

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CAST('2010-' + REPLICATE('0', 2 - LEN(CAST([p].[ID] AS NVarChar(2)))) + CAST([p].[ID] AS NVarChar(2)) + '-01' AS DateTime) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

