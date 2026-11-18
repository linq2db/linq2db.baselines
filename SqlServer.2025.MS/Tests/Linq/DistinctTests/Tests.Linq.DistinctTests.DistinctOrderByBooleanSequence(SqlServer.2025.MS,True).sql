-- SqlServer.2025.MS SqlServer.2025
SELECT
	[t_1].[ID]
FROM
	(
		SELECT DISTINCT
			[t].[BoolValue],
			[t].[ID]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
ORDER BY
	[t_1].[BoolValue] DESC,
	[t_1].[ID]

