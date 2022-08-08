BeforeExecute
-- SqlServer.2019

SELECT
	Convert(Date, format((2010 + [t].[ID]), 'd4') + N'-01-01')
FROM
	[LinqDataTypes] [t]

