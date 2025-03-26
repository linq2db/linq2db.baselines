BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @productId  -- Guid
SET     @productId = X'3D667BBCDE0F27438F925D8CC3A11D11'

SELECT
	[x].[Id],
	[x].[ProductName],
	[category_1].[Id],
	[category_1].[CategoryName],
	[category_1].[ProductId]
FROM
	[Product] [x]
		INNER JOIN [Category] [category_1] ON [x].[Id] = [category_1].[ProductId]
WHERE
	[x].[Id] = @productId

