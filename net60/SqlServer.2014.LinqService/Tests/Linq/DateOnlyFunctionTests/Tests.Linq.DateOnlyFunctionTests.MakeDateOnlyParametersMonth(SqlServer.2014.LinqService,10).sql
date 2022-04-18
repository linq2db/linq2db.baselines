BeforeExecute
-- SqlServer.2014

SELECT
	Convert(Date, Convert(NVarChar(11), 2010 + [t].[ID]) + N'-10-01')
FROM
	[LinqDataTypes] [t]

