-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Uid Binary(16)
SET     @Uid = 0x3D667BBCDE0F27438F925D8CC3A11D11
DECLARE @Id  -- Int64
SET     @Id = 0

UPDATE
	[Blob16AsGuidTable] [t1]
SET
	[t1].[Uid] = @Uid
WHERE
	[t1].[Id] = @Id

