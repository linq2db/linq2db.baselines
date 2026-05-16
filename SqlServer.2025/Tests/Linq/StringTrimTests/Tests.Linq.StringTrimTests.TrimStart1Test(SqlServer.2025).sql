-- SqlServer.2025

SELECT
	LTRIM(N'...' || Coalesce([t].[VarCharColumn], ''), N'.')
FROM
	[StringTrimTable] [t]

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

