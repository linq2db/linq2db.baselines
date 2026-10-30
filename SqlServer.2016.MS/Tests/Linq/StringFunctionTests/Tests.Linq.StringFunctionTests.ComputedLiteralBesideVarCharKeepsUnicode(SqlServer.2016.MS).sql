-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t].[Id],
	Replace([t].[VarCharColumn], N'A', N'Ж'),
	Replace([t].[VarCharColumn], N'A', N'Ж'),
	IIF([t].[VarCharColumn] IS NULL OR LEN([t].[VarCharColumn] + N'.') >= 9, [t].[VarCharColumn], REPLICATE(N'Ж', 8 - (LEN([t].[VarCharColumn] + N'.') - 1)) + [t].[VarCharColumn])
FROM
	[StringTypesTable] [t]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

