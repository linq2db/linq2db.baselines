-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t].[Id],
	Replace([t].[VarCharColumn], 'A', N'Ж'),
	Replace([t].[VarCharColumn], 'A', N'Ж')
FROM
	[StringTypesTable] [t]

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

