BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'1'

SELECT
	Convert(Date, Convert(NVarChar(11), 2010 + [t].[ID]) + N'-' + @p_1 + N'-1')
FROM
	[LinqDataTypes] [t]

