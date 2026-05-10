-- SqlServer.2025

SELECT
	RTRIM([t].[VarCharColumn] + '   ')
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

