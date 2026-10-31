-- SqlServer.2025.MS SqlServer.2025
DECLARE @suffix NVarChar(40) -- String
SET     @suffix = N'Жук'

SELECT
	[p].[Id]
FROM
	[ConcatProduct] [p]
WHERE
	([p].[Sku] || Coalesce(@suffix, N'')) = [p].[Title]

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

