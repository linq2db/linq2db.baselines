BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3060Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue3060Table]
(
	[Id]  BigInt        NOT NULL,
	[Uid] VarBinary(16)     NULL,

	CONSTRAINT [PK_Issue3060Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
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

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3060Table]

