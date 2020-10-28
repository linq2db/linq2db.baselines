BeforeExecute
-- SqlCe
DECLARE @p1 NVarChar(2) -- String
SET     @p1 = '10'

SELECT
	Convert(Datetime, Convert(NVarChar(11), 2010 + [t].[ID]) + '-' + @p1 + '-1')
FROM
	[LinqDataTypes] [t]

