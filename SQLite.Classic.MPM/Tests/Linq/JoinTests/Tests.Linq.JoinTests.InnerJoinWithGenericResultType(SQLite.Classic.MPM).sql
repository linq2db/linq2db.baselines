-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @productId Blob -- Guid
SET     @productId = X'3D667BBCDE0F27438F925D8CC3A11D11'

SELECT
	[x].[Id],
	[x].[ProductName],
	[category].[Id],
	[category].[CategoryName],
	[category].[ProductId]
FROM
	[GenericJoinProduct] [x]
		INNER JOIN [GenericJoinCategory] [category] ON [x].[Id] = [category].[ProductId]
WHERE
	[x].[Id] = @productId

