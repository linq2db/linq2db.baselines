-- SqlServer.2012.MS SqlServer.2012

SELECT
	Coalesce([t].[VarCharColumn], '') + N'...++'
FROM
	[StringTrimTable] [t]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

