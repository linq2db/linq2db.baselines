-- SqlServer.2025.MS SqlServer.2025

SELECT
	LTRIM('   ' + [t].[VarCharColumn])
FROM
	[StringTrimTable] [t]

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

