﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3360Table1]

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Byte  -- Byte
SET     @Byte = 0
DECLARE @ByteN  -- Byte
SET     @ByteN = NULL
DECLARE @Guid  -- Guid
SET     @Guid = X'00000000000000000000000000000000'
DECLARE @GuidN  -- Guid
SET     @GuidN = NULL
DECLARE @Enum NChar(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN NChar -- StringFixedLength
SET     @EnumN = NULL
DECLARE @Bool  -- Boolean
SET     @Bool = 0
DECLARE @BoolN  -- Boolean
SET     @BoolN = NULL

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
(
	@Id,
	@Byte,
	@ByteN,
	@Guid,
	@GuidN,
	@Enum,
	@EnumN,
	@Bool,
	@BoolN
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Byte  -- Byte
SET     @Byte = 1
DECLARE @ByteN  -- Byte
SET     @ByteN = 2
DECLARE @Guid  -- Guid
SET     @Guid = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @GuidN  -- Guid
SET     @GuidN = X'0D6048A921DE744F8AC29516B287076E'
DECLARE @Enum NChar(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN NChar(11) -- StringFixedLength
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool  -- Boolean
SET     @Bool = 1
DECLARE @BoolN  -- Boolean
SET     @BoolN = 0

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
(
	@Id,
	@Byte,
	@ByteN,
	@Guid,
	@GuidN,
	@Enum,
	@EnumN,
	@Bool,
	@BoolN
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Byte  -- Byte
SET     @Byte = 3
DECLARE @ByteN  -- Byte
SET     @ByteN = 4
DECLARE @Guid  -- Guid
SET     @Guid = X'A57339BD2343D84D9F4FDF9F93E2A627'
DECLARE @GuidN  -- Guid
SET     @GuidN = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @Enum NChar(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN NChar(11) -- StringFixedLength
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool  -- Boolean
SET     @Bool = 0
DECLARE @BoolN  -- Boolean
SET     @BoolN = 1

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
(
	@Id,
	@Byte,
	@ByteN,
	@Guid,
	@GuidN,
	@Enum,
	@EnumN,
	@Bool,
	@BoolN
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Byte],
	[t1].[Byte_1],
	[t1].[Guid],
	[t1].[Guid_1],
	[t1].[Enum],
	[t1].[EnumN],
	[t1].[Bool],
	[t1].[Bool_1]
FROM
	(
		SELECT
			[r].[Id],
			[r].[Byte],
			[r].[Byte] as [Byte_1],
			[r].[Guid],
			[r].[Guid] as [Guid_1],
			NULL as [Enum],
			NULL as [EnumN],
			[r].[Bool],
			[r].[Bool] as [Bool_1]
		FROM
			[Issue3360Table1] [r]
		WHERE
			[r].[Id] = 2
		UNION ALL
		SELECT
			[r_1].[Id],
			[r_1].[Byte],
			[r_1].[ByteN] as [Byte_1],
			[r_1].[Guid],
			[r_1].[GuidN] as [Guid_1],
			[r_1].[Enum],
			[r_1].[EnumN],
			[r_1].[Bool],
			[r_1].[BoolN] as [Bool_1]
		FROM
			[Issue3360Table1] [r_1]
		WHERE
			[r_1].[Id] = 4
	) [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3360Table1]

