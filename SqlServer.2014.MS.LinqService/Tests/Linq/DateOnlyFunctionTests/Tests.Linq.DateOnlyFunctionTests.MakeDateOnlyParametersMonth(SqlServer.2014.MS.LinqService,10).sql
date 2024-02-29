BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Convert(Date, format((2010 + [t].[ID]), 'd4') + N'-10-01')
FROM
	[LinqDataTypes] [t]

