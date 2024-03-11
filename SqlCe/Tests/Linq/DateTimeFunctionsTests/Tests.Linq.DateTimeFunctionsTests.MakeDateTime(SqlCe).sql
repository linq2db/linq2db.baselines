BeforeExecute
-- SqlCe

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			DatePart(year, Convert(Datetime, '2010-' + REPLICATE('0', 2 - LEN(CAST([t].[ID] as NVARCHAR(2)))) + CAST([t].[ID] as NVARCHAR(2)) + '-01')) as [Year_1],
			Convert(Datetime, '2010-' + REPLICATE('0', 2 - LEN(CAST([t].[ID] as NVARCHAR(2)))) + CAST([t].[ID] as NVARCHAR(2)) + '-01') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

