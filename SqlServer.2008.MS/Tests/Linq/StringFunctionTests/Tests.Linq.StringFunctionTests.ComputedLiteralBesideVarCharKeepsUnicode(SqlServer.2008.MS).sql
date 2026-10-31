-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t].[Id],
	Replace([t].[VarCharColumn], N'A', N'Ж'),
	Replace([t].[VarCharColumn], N'A', N'Ж'),
	CASE
		WHEN [t].[VarCharColumn] IS NULL OR LEN([t].[VarCharColumn] + N'.') >= 9
			THEN [t].[VarCharColumn]
		ELSE REPLICATE(N'Ж', 8 - (LEN([t].[VarCharColumn] + N'.') - 1)) + [t].[VarCharColumn]
	END
FROM
	[StringTypesTable] [t]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

