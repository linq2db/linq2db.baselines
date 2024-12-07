BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3360Table1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue3360Table1]
(
	[Id]    Int       NOT NULL,
	[Byte]  TinyInt   NOT NULL,
	[ByteN] TinyInt       NULL,
	[Guid]  Guid      NOT NULL,
	[GuidN] Guid          NULL,
	[Enum]  NChar(11) NOT NULL,
	[EnumN] NChar(11)     NULL,
	[Bool]  Bit       NOT NULL,
	[BoolN] Bit           NULL,

	CONSTRAINT [PK_Issue3360Table1] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Byte UnsignedTinyInt(1) -- Byte
SET     @Byte = 0
DECLARE @ByteN UnsignedTinyInt -- Byte
SET     @ByteN = NULL
DECLARE @Guid Guid
SET     @Guid = '{00000000-0000-0000-0000-000000000000}'
DECLARE @GuidN Guid
SET     @GuidN = NULL
DECLARE @Enum WChar(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN WChar -- StringFixedLength
SET     @EnumN = NULL
DECLARE @Bool Boolean
SET     @Bool = False
DECLARE @BoolN Boolean
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Byte UnsignedTinyInt(1) -- Byte
SET     @Byte = 1
DECLARE @ByteN UnsignedTinyInt(1) -- Byte
SET     @ByteN = 2
DECLARE @Guid Guid
SET     @Guid = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @GuidN Guid
SET     @GuidN = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @Enum WChar(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN WChar(11) -- StringFixedLength
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool Boolean
SET     @Bool = True
DECLARE @BoolN Boolean
SET     @BoolN = False

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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Byte UnsignedTinyInt(1) -- Byte
SET     @Byte = 3
DECLARE @ByteN UnsignedTinyInt(1) -- Byte
SET     @ByteN = 4
DECLARE @Guid Guid
SET     @Guid = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'
DECLARE @GuidN Guid
SET     @GuidN = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @Enum WChar(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN WChar(11) -- StringFixedLength
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool Boolean
SET     @Bool = False
DECLARE @BoolN Boolean
SET     @BoolN = True

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
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[c1],
	[t1].[c2],
	[t1].[c3],
	[t1].[c4],
	[t1].[c5],
	[t1].[c6],
	[t1].[c7],
	[t1].[c8]
FROM
	(
		SELECT
			[r].[Id],
			IIF(False, 0, NULL) as [c1],
			IIF(False, 0, NULL) as [c2],
			IIF(False, '{00000000-0000-0000-0000-000000000000}', NULL) as [c3],
			IIF(False, '{00000000-0000-0000-0000-000000000000}', NULL) as [c4],
			IIF(False, 'ENUM1_VALUE', NULL) as [c5],
			IIF(False, 'ENUM2_VALUE', NULL) as [c6],
			IIF(False, False, NULL) as [c7],
			IIF(False, False, NULL) as [c8]
		FROM
			[Issue3360Table1] [r]
		WHERE
			[r].[Id] = 1
		UNION ALL
		SELECT
			[r_1].[Id],
			[r_1].[Byte] as [c1],
			[r_1].[ByteN] as [c2],
			[r_1].[Guid] as [c3],
			[r_1].[GuidN] as [c4],
			[r_1].[Enum] as [c5],
			[r_1].[EnumN] as [c6],
			[r_1].[Bool] as [c7],
			[r_1].[BoolN] as [c8]
		FROM
			[Issue3360Table1] [r_1]
		WHERE
			[r_1].[Id] = 2
	) [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3360Table1]

