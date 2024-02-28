BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Convert(Date, right(replicate('0',4) + cast((2010 + [t].[ID]) as varchar(255)),4) + '-01-01')
FROM
	[LinqDataTypes] [t]

