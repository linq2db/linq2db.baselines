BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p UniVarChar(2) -- String
SET     @p = '01'

SELECT
	Convert(Date, right(replicate('0',4) + cast((2010 + [t].[ID]) as varchar(255)),4) + '-' + @p + '-01')
FROM
	[LinqDataTypes] [t]

