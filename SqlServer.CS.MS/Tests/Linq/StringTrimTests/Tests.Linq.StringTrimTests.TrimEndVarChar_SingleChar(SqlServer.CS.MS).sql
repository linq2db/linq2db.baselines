-- SqlServer.CS.MS SqlServer.2025
SELECT
	RTRIM(Coalesce([t].[VarCharColumn], '') || N'...', N'.')
FROM
	[StringTrimTable] [t]

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

