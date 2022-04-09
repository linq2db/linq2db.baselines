BeforeExecute
-- SqlCe
DECLARE @p_1 NVarChar(2) -- String
SET     @p_1 = '10'

SELECT
	Convert(Datetime, Convert(NVarChar(11), 2010 + [t].[ID]) + '-' + @p_1 + '-1')
FROM
	[LinqDataTypes] [t]

