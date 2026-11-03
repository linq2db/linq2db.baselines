-- Sybase.Managed Sybase
DECLARE @suffix UniVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	[t].[Id],
	RTRIM(Str_Replace([t].[CharColumn], 'A', @suffix)),
	RTRIM(Str_Replace([t].[CharColumn], 'A', 'Ж'))
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

