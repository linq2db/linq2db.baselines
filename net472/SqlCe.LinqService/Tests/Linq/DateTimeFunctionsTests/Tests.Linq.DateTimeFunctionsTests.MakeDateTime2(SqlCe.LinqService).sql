BeforeExecute
-- SqlCe

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(DateTime, '2010-' + REPLICATE('0', 2 - LEN(CAST([p].[ID] as NVARCHAR(2)))) + CAST([p].[ID] as NVARCHAR(2)) + '-01 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

