BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	Convert(Date, format((2010 + [t].[ID]), 'd4') + N'-10-01')
FROM
	[LinqDataTypes] [t]

