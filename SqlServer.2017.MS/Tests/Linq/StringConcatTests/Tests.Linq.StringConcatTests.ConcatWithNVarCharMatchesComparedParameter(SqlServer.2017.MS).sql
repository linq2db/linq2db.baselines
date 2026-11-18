-- SqlServer.2017.MS SqlServer.2017
DECLARE @key NVarChar(40) -- String
SET     @key = N'A-100A-100Жук'

SELECT
	[p].[Id]
FROM
	[ConcatProduct] [p]
WHERE
	([p].[Sku] + [p].[Title]) = @key

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

