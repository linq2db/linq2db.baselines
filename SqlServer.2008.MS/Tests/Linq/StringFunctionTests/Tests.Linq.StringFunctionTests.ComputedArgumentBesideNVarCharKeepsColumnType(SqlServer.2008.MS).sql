-- SqlServer.2008.MS SqlServer.2008
DECLARE @suffix NVarChar(50) -- String
SET     @suffix = N'Жук'

SELECT
	[t].[Id],
	Replace([t].[NVarCharColumn], N'A', @suffix)
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

