-- Sybase.Managed Sybase
DECLARE @suffix UniVarChar(3) -- String
SET     @suffix = 'Жук'
DECLARE @search UniVarChar(1) -- String
SET     @search = 'Ж'

SELECT
	[t].[Id],
	Str_Replace([t].[VarCharColumn], 'A', @suffix),
	Str_Replace([t].[VarCharColumn], 'A', @suffix),
	Str_Replace([t].[VarCharColumn], @search, '-')
FROM
	[StringTypesTable] [t]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

