-- SqlServer.SA SqlServer.2019

SELECT
	RTRIM(Coalesce([t].[VarCharColumn], '') + N'   ')
FROM
	[StringTrimTable] [t]

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

