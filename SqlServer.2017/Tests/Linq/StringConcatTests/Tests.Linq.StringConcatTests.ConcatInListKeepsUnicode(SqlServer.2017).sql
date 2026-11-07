-- SqlServer.2017
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'Жук'

SELECT
	[p].[Id]
FROM
	[ConcatProduct] [p]
WHERE
	([p].[Sku] + Coalesce(@suffix, N'')) IN (N'A-100Щит', N'B-200Жук')

-- SqlServer.2017
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

