BeforeExecute
-- SqlCe
DECLARE @p_1 NVarChar(2) -- String
SET     @p_1 = '10'

SELECT
	Convert(Datetime, REPLICATE('0', 4 - LEN(CAST((2010 + [t].[ID]) as NVARCHAR(4)))) + CAST((2010 + [t].[ID]) as NVARCHAR(4)) + '-' + @p_1 + '-01')
FROM
	[LinqDataTypes] [t]

