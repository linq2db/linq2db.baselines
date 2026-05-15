-- SqlServer.2005.MS SqlServer.2005

SELECT
	RTRIM([t].[VarCharColumn] + '   ')
FROM
	[StringTrimTable] [t]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

