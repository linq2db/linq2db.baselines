-- SqlServer.2022.MS SqlServer.2022

SELECT
	LTRIM([t].[VarCharColumn], '.+')
FROM
	[StringTrimTable] [t]
ORDER BY
	[t].[Id]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	LTRIM([t].[VarCharColumn], 'ab')
FROM
	[StringTrimTable] [t]
ORDER BY
	[t].[Id]

