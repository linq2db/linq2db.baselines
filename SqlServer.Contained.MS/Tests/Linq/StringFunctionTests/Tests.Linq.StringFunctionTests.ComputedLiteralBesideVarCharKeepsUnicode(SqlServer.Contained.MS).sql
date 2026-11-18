-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[t].[Id],
	Replace([t].[VarCharColumn], 'A', N'Ж'),
	Replace([t].[VarCharColumn], 'A', N'Ж')
FROM
	[StringTypesTable] [t]

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

