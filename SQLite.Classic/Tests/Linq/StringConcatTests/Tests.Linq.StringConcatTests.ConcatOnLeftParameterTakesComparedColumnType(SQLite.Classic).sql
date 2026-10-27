-- SQLite.Classic SQLite
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	[p].[Id]
FROM
	[ConcatProduct] [p]
WHERE
	([p].[Sku] || Coalesce(@suffix, '')) = [p].[Title]

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

