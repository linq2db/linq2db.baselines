-- SqlServer.2022.MS SqlServer.2022

SELECT
	RTRIM([t].[VarCharColumn], '.+')
FROM
	[StringTrimTable] [t]
ORDER BY
	[t].[Id]

