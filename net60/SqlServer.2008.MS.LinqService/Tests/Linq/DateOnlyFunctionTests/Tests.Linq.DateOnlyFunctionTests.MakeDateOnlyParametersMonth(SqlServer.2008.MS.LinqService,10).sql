BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Convert(Date, Convert(NVarChar(11), 2010 + [t].[ID]) + N'-10-01')
FROM
	[LinqDataTypes] [t]

