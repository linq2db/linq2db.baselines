BeforeExecute
-- SqlServer.2014
DECLARE @p NVarChar(4000) -- String
SET     @p = N'10'

SELECT
	Convert(Date, format((2010 + [t].[ID]), 'd4') + N'-' + @p + N'-01')
FROM
	[LinqDataTypes] [t]

