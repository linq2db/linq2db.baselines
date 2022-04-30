BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Convert(Date, Convert(NVarChar(11), 2010 + [t].[ID]) + N'-10-01')
FROM
	[LinqDataTypes] [t]

