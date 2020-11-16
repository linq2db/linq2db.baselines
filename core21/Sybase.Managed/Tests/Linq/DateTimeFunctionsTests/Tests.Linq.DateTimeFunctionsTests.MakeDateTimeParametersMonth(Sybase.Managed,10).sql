BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p1 UniVarChar(2) -- String
SET     @p1 = '10'

SELECT
	Convert(Date, Convert(VarChar(11), 2010 + [t].[ID]) + '-' + @p1 + '-1')
FROM
	[LinqDataTypes] [t]

