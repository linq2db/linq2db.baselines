-- SqlServer.2017

SELECT
	RTRIM(Coalesce([t].[VarCharColumn], '') + N'   ')
FROM
	[StringTrimTable] [t]

-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

