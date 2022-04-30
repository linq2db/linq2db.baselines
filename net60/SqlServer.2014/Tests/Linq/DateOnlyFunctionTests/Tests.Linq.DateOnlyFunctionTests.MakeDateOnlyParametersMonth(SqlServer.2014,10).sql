BeforeExecute
-- SqlServer.2014
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'10'

SELECT
	Convert(Date, Convert(NVarChar(11), 2010 + [t].[ID]) + N'-' + @p_1 + N'-01')
FROM
	[LinqDataTypes] [t]

