-- SqlServer.CS.MS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'Жук'
DECLARE @search NVarChar(4000) -- String
SET     @search = N'Ж'

SELECT
	[t].[Id],
	Replace([t].[VarCharColumn], 'A', @suffix),
	Replace([t].[VarCharColumn], 'A', @suffix),
	Replace([t].[VarCharColumn], @search, '-')
FROM
	[StringTypesTable] [t]

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

