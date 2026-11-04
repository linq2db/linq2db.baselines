-- Sybase.Managed Sybase
DECLARE @key UniVarChar(13) -- String
SET     @key = 'A-100A-100Жук'

SELECT
	[p].[Id]
FROM
	[ConcatProduct] [p]
WHERE
	([p].[Sku] || [p].[Title]) = @key

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

