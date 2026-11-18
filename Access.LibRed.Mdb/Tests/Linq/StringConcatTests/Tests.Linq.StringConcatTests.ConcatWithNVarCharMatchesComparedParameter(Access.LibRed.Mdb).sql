-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @key NVarChar(13) -- String
SET     @key = 'A-100A-100Жук'

SELECT
	[p].[Id]
FROM
	[ConcatProduct] [p]
WHERE
	([p].[Sku] + [p].[Title]) = @key

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

