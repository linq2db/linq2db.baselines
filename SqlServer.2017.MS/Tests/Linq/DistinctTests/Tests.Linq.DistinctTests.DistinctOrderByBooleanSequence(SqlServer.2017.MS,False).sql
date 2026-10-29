-- SqlServer.2017.MS SqlServer.2017
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
	[t_1].[BoolValue],
	[t_1].[ID]

