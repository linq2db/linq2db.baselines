BeforeExecute
-- SqlCe
DECLARE @p NVarChar(2) -- String
SET     @p = '01'

SELECT
	Convert(Datetime, REPLICATE('0', 4 - LEN(CAST((2010 + [t].[ID]) as NVARCHAR(4)))) + CAST((2010 + [t].[ID]) as NVARCHAR(4)) + '-' + @p + '-01')
FROM
	[LinqDataTypes] [t]

