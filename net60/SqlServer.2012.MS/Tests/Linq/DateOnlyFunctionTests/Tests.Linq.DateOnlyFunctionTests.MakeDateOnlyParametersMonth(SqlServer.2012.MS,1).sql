BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'01'

SELECT
	Convert(Date, Convert(NVarChar(11), 2010 + [t].[ID]) + N'-' + @p_1 + N'-01')
FROM
	[LinqDataTypes] [t]

