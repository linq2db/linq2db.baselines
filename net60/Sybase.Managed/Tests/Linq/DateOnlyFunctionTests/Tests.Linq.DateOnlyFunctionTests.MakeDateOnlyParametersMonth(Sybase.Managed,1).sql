BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p_1 UniVarChar(2) -- String
SET     @p_1 = '01'

SELECT
	Convert(Date, right(replicate('0',4) + cast((2010 + [t].[ID]) as varchar(255)),4) + '-' + @p_1 + '-01')
FROM
	[LinqDataTypes] [t]

