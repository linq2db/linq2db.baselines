-- SqlServer.2022.MS SqlServer.2022
DECLARE @suffix NVarChar(40) -- String
SET     @suffix = N'Жук'

SELECT
	[p].[Id]
FROM
	[ConcatProduct] [p]
WHERE
	[p].[Title] = ([p].[Sku] + Coalesce(@suffix, N''))

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

