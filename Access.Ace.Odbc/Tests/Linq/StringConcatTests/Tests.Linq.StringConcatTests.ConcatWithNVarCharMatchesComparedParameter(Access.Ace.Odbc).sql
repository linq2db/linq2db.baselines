-- Access.Ace.Odbc AccessODBC
DECLARE @key NVarChar(13) -- String
SET     @key = 'A-100A-100Жук'

SELECT
	[p].[Id]
FROM
	[ConcatProduct] [p]
WHERE
	([p].[Sku] + [p].[Title]) = ?

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

