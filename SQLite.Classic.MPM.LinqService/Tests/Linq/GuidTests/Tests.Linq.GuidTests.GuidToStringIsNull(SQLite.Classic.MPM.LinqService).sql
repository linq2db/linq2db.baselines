BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @Guid1  -- Guid
SET     @Guid1 = X'3D667BBCDE0F27438F925D8CC3A11D11'

SELECT
	[x].[Id],
	[x].[NullableGuid]
FROM
	[TableWithGuid] [x]
WHERE
	[x].[NullableGuid] IS NULL AND [x].[Id] = @Guid1
LIMIT 2

