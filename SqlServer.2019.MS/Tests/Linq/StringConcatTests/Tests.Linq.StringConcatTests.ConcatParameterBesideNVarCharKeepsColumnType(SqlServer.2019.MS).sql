-- SqlServer.2019.MS SqlServer.2019
DECLARE @suffix NVarChar(40) -- String
SET     @suffix = N'Жук'

SELECT
	[p].[Id],
	[p].[Title] + Coalesce(@suffix, N'')
FROM
	[ConcatProduct] [p]

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

