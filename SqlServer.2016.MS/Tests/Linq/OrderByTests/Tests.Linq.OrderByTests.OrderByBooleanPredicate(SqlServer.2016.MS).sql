-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
ORDER BY
	IIF([t].[ID] > 5, 1, 0),
	[t].[ID]

