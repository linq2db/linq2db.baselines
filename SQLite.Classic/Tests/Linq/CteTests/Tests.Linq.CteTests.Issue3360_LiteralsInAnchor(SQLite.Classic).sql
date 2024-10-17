BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3360Table1]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue3360Table1]
(
	[Id]    INTEGER   NOT NULL,
	[Byte]  TinyInt   NOT NULL,
	[ByteN] TinyInt       NULL,
	[Guid]  Guid      NOT NULL,
	[GuidN] Guid          NULL,
	[Enum]  NChar(11) NOT NULL,
	[EnumN] NChar(11)     NULL,
	[Bool]  Bit       NOT NULL,
	[BoolN] Bit           NULL,

	CONSTRAINT [PK_Issue3360Table1] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Issue3360Table1]
(
	[Id],
	[Byte],
	[ByteN],
	[Guid],
	[GuidN],
	[Enum],
	[EnumN],
	[Bool],
	[BoolN]
)
VALUES
(1,0,NULL,X'00000000000000000000000000000000',NULL,'ENUM1_VALUE',NULL,0,NULL),
(2,1,2,X'3D667BBCDE0F27438F925D8CC3A11D11',X'0D6048A921DE744F8AC29516B287076E','ENUM1_VALUE','ENUM2_VALUE',1,0),
(4,3,4,X'A57339BD2343D84D9F4FDF9F93E2A627',X'3D667BBCDE0F27438F925D8CC3A11D11','ENUM1_VALUE','ENUM2_VALUE',0,1)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'27FE8A0B1C482E44B8CF729DDFEECE29'
DECLARE @Id_1  -- Guid
SET     @Id_1 = X'27FE8A0B1C482E44B8CF729DDFEECE30'

WITH [cte]
(
	[Id],
	[Byte],
	[ByteN],
	[Guid],
	[GuidN],
	[Enum],
	[EnumN],
	[Bool],
	[BoolN]
)
AS
(
	SELECT
		[r].[Id],
		CAST(5 AS TinyInt),
		CAST(5 AS TinyInt),
		@Id,
		@Id_1,
		CAST('ENUM1_VALUE' AS NChar(11)),
		CAST('ENUM2_VALUE' AS NChar(11)),
		CAST(1 AS Bit),
		CAST(0 AS Bit)
	FROM
		[Issue3360Table1] [r]
	WHERE
		[r].[Id] = 2
	UNION ALL
	SELECT
		[r_1].[Id],
		[r_1].[Byte],
		[r_1].[ByteN],
		[r_1].[Guid],
		[r_1].[GuidN],
		[r_1].[Enum],
		[r_1].[EnumN],
		[r_1].[Bool],
		[r_1].[BoolN]
	FROM
		[Issue3360Table1] [r_1]
			INNER JOIN [cte] [parent] ON [r_1].[Id] = [parent].[Id] + 2
)
SELECT
	[t1].[Id],
	[t1].[Byte],
	[t1].[ByteN],
	[t1].[Guid],
	[t1].[GuidN],
	[t1].[Enum],
	[t1].[EnumN],
	[t1].[Bool],
	[t1].[BoolN]
FROM
	[cte] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3360Table1]

