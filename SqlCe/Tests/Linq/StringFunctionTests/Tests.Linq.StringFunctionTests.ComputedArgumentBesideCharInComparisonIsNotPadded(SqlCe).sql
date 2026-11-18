-- SqlCe
DECLARE @dash NVarChar(1) -- String
SET     @dash = '-'

SELECT
	[a].[Id],
	[b].[Id] as [B_1]
FROM
	[StringTypesTable] [a],
	[StringTypesTable] [b]
WHERE
	[b].[VarCharColumn] = RTRIM(Replace([a].[CharColumn], '?', @dash)) OR
	[b].[VarCharColumn] IS NULL AND [a].[CharColumn] IS NULL

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

