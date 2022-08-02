BeforeExecute
-- SqlCe

SELECT
	Convert(Datetime, REPLICATE('0', 4 - LEN(CAST((2010 + [t].[ID]) as NVARCHAR(4)))) + CAST((2010 + [t].[ID]) as NVARCHAR(4)) + '-01-01')
FROM
	[LinqDataTypes] [t]

