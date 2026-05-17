-- SqlCe

SELECT
	Coalesce([t].[VarCharColumn], '') + '...++' as [c1]
FROM
	[StringTrimTable] [t]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

