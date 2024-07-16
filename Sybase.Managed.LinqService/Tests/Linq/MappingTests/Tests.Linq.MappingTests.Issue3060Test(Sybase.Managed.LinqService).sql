BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3060Table') IS NOT NULL)
	DROP TABLE [Issue3060Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3060Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue3060Table]
		(
			[Id]  BigInt        NOT NULL,
			[Uid] VarBinary(16)     NULL,

			CONSTRAINT [PK_Issue3060Table] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3060Table') IS NOT NULL)
	DROP TABLE [Issue3060Table]

