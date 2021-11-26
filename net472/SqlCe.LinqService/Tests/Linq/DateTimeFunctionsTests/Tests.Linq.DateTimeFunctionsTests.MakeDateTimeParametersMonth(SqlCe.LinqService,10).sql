BeforeExecute
-- SqlCe

SELECT
	Convert(Datetime, Convert(NVarChar(100), 2010 + [t].[ID]) + '-10-1')
FROM
	[LinqDataTypes] [t]

