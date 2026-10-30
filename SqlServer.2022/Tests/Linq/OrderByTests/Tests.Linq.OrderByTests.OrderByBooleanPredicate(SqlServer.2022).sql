-- SqlServer.2022
SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
ORDER BY
	IIF([t].[ID] > 5, 1, 0),
	[t].[ID]

