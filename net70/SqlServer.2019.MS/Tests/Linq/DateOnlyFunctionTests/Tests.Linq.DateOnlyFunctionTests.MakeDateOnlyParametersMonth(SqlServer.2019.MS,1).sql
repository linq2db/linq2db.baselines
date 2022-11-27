BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'01'

SELECT
	Convert(Date, format((2010 + [t].[ID]), 'd4') + N'-' + @p_1 + N'-01')
FROM
	[LinqDataTypes] [t]

