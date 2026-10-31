-- SQLite.Classic SQLite
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	[p].[Id],
	[p].[Sku] || Coalesce(@suffix, ''),
	Coalesce(@suffix, '') || [p].[Sku] || Coalesce(@suffix, ''),
	[p].[Sku] || Coalesce(@suffix, '')
FROM
	[ConcatProduct] [p]

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

