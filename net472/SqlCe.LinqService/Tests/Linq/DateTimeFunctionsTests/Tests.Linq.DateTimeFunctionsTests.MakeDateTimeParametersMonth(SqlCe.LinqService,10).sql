BeforeExecute
-- SqlCe

SELECT
	Convert(Datetime, Convert(NVarChar(4000), 2010 + [t].[ID]) + '-10-1')
FROM
	[LinqDataTypes] [t]

