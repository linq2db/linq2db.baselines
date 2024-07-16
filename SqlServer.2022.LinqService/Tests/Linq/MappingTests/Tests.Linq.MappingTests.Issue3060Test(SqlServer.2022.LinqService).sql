BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue3060Table]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Issue3060Table]', N'U') IS NULL)
	CREATE TABLE [Issue3060Table]
	(
		[Id]  BigInt        NOT NULL,
		[Uid] VarBinary(16)     NULL,

		CONSTRAINT [PK_Issue3060Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022
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

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue3060Table]

