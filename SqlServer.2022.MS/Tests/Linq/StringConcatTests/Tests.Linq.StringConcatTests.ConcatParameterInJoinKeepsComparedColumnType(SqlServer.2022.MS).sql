-- SqlServer.2022.MS SqlServer.2022
DECLARE @keySuffix VarChar(20) -- AnsiString
SET     @keySuffix = N'-X'

SELECT
	[a].[Id],
	[b].[Id]
FROM
	[ConcatProduct] [a],
	[ConcatProduct] [b]
WHERE
	[b].[Sku] = ([a].[Sku] + Coalesce(@keySuffix, ''))

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t1].[Id],
	[t1].[Sku],
	[t1].[Title]
FROM
	[ConcatProduct] [t1]

