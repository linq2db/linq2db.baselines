BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p_1 UniVarChar(1) -- String
SET     @p_1 = '1'

SELECT
	Convert(Date, Convert(VarChar(11), 2010 + [t].[ID]) + '-' + @p_1 + '-1')
FROM
	[LinqDataTypes] [t]

