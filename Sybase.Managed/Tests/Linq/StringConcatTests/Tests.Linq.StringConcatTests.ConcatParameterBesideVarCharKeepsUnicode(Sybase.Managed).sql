-- Sybase.Managed Sybase
DECLARE @suffix UniVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	[p].[Id],
	[p].[Sku] || Coalesce(@suffix, ''),
	Coalesce(@suffix, '') || [p].[Sku] || Coalesce(@suffix, ''),
	[p].[Sku] || Coalesce(@suffix, '')
FROM
	[ConcatProduct] [p]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

