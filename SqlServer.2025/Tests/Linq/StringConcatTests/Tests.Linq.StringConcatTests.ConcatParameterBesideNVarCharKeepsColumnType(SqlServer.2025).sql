-- SqlServer.2025
DECLARE @suffix NVarChar(40) -- String
SET     @suffix = N'Жук'

SELECT
	[p].[Id],
	[p].[Title] || Coalesce(@suffix, N'')
FROM
	[ConcatProduct] [p]

-- SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

