-- SqlServer.2019.MS SqlServer.2019
DECLARE @suffix NVarChar(50) -- String
SET     @suffix = N'Жук'

SELECT
	[t].[Id],
	Replace([t].[NVarCharColumn], N'A', @suffix)
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

