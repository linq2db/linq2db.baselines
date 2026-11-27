-- SqlServer.2012.MS SqlServer.2012
DECLARE @Uid VarBinary(16) -- Binary
SET     @Uid = 0x3D667BBCDE0F27438F925D8CC3A11D11
DECLARE @Id BigInt -- Int64
SET     @Id = 0

UPDATE
	[Blob16AsGuidTable]
SET
	[Uid] = @Uid
WHERE
	[Blob16AsGuidTable].[Id] = @Id

