BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @Uid VarBinary(16) -- Binary
SET     @Uid = 0x3D667BBCDE0F27438F925D8CC3A11D11
DECLARE @Id BigInt -- Int64
SET     @Id = 0

UPDATE
	[Issue3060Table]
SET
	[Uid] = @Uid
WHERE
	[Issue3060Table].[Id] = @Id

