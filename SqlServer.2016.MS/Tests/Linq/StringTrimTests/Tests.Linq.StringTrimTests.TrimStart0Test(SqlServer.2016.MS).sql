-- SqlServer.2016.MS SqlServer.2016

SELECT
	LTRIM(N'   ' + Coalesce([t].[VarCharColumn], ''))
FROM
	[StringTrimTable] [t]

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

