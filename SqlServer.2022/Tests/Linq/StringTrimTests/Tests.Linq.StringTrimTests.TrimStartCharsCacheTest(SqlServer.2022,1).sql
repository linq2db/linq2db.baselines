-- SqlServer.2022

SELECT
	LTRIM([t].[VarCharColumn], '.+')
FROM
	[StringTrimTable] [t]
ORDER BY
	[t].[Id]

