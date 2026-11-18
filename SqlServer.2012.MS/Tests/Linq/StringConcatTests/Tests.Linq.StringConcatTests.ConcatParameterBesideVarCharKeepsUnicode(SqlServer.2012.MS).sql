-- SqlServer.2012.MS SqlServer.2012
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'Жук'

SELECT
	[p].[Id],
	[p].[Sku] + Coalesce(@suffix, N''),
	Coalesce(@suffix, N'') + [p].[Sku] + Coalesce(@suffix, N''),
	[p].[Sku] + Coalesce(@suffix, N'')
FROM
	[ConcatProduct] [p]

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

