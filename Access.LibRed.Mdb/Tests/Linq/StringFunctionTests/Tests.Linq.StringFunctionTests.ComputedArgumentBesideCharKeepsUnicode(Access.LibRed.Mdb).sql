-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	[t].[Id],
	RTRIM(Replace([t].[CharColumn], 'A', @suffix)),
	RTRIM(Replace([t].[CharColumn], 'A', 'Ж'))
FROM
	[StringTypesTable] [t]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

