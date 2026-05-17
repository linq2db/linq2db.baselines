-- SqlServer.2019.MS SqlServer.2019

SELECT
	LTRIM(N'   ' + Coalesce([t].[VarCharColumn], ''))
FROM
	[StringTrimTable] [t]

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

