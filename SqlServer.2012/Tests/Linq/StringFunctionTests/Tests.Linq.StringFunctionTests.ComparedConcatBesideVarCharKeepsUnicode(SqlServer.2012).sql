-- SqlServer.2012
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'Жук'

SELECT
	[t].[Id],
	CASE
		WHEN (Coalesce([t].[VarCharColumn], '') + Coalesce(@suffix, N'')) > [t].[NVarCharColumn] OR [t].[NVarCharColumn] IS NULL
			THEN 1
		WHEN (Coalesce([t].[VarCharColumn], '') + Coalesce(@suffix, N'')) = [t].[NVarCharColumn]
			THEN 0
		ELSE -1
	END,
	RTRIM(Coalesce([t].[VarCharColumn], '') + Coalesce(@suffix, N''))
FROM
	[StringTypesTable] [t]

-- SqlServer.2012
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

-- SqlServer.2012
DECLARE @suffix NVarChar(50) -- String
SET     @suffix = N'Жук'

SELECT
	[t].[Id]
FROM
	[StringTypesTable] [t]
WHERE
	(Coalesce([t].[VarCharColumn], '') + Coalesce(@suffix, N'')) LIKE [t].[NVarCharColumn]

