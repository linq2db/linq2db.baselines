BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @Uid Binary(16)
SET     @Uid = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @Id  -- Int64
SET     @Id = 0

UPDATE
	[Issue3060Table]
SET
	[Uid] = @Uid
WHERE
	[Issue3060Table].[Id] = @Id

