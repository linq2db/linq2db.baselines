-- Sybase.Managed Sybase
DECLARE @suffix UniVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	[p].[Id]
FROM
	[ConcatProduct] [p]
WHERE
	([p].[Sku] || Coalesce(@suffix, '')) = [p].[Title]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

