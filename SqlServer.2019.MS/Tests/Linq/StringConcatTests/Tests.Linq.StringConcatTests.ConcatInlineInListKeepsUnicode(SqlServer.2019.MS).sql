-- SqlServer.2019.MS SqlServer.2019
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'Жук'

SELECT
	[p].[Id]
FROM
	[ConcatProduct] [p]
WHERE
	([p].[Sku] + Coalesce(@suffix, N'')) IN (N'A-100Жук', N'B-200Щит')

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'Жук'

SELECT
	[p].[Id]
FROM
	[ConcatProduct] [p]
WHERE
	([p].[Sku] + Coalesce(@suffix, N'')) IN ([p].[Title], N'B-200Жук')

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

