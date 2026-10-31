-- SqlServer.2017.MS SqlServer.2017
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'Жук'
DECLARE @search NVarChar(4000) -- String
SET     @search = N'Ж'

SELECT
	[t].[Id],
	Replace([t].[VarCharColumn], N'A', @suffix),
	Replace([t].[VarCharColumn], N'A', @suffix),
	Replace([t].[VarCharColumn], @search, N'-')
FROM
	[StringTypesTable] [t]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

