BeforeExecute
-- SqlCe

SELECT
	Convert(Datetime, REPLICATE('0', 4 - LEN(CAST((2010 + [t].[ID]) as NVARCHAR(4)))) + CAST((2010 + [t].[ID]) as NVARCHAR(4)) + '-10-01') as [c1]
FROM
	[LinqDataTypes] [t]

