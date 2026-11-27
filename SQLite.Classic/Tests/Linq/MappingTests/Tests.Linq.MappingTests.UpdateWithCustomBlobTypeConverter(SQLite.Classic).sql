-- SQLite.Classic SQLite
DECLARE @Uid Binary(16)
SET     @Uid = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @Id Integer -- Int64
SET     @Id = 0

UPDATE
	[Blob16AsGuidTable]
SET
	[Uid] = @Uid
WHERE
	[Blob16AsGuidTable].[Id] = @Id

