-- SqlServer.2025.MS SqlServer.2025

SELECT
	RTRIM([t].[VarCharColumn], '.+')
FROM
	[StringTrimTable] [t]
ORDER BY
	[t].[Id]

