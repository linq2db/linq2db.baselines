BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3360Table1]', N'U') IS NOT NULL)
	DROP TABLE [Issue3360Table1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3360Table1]', N'U') IS NULL)
	CREATE TABLE [Issue3360Table1]
	(
		[Id]    Int              NOT NULL,
		[Byte]  TinyInt          NOT NULL,
		[ByteN] TinyInt              NULL,
		[Guid]  UniqueIdentifier NOT NULL,
		[GuidN] UniqueIdentifier     NULL,
		[Enum]  NChar(11)        NOT NULL,
		[EnumN] NChar(11)            NULL,
		[Bool]  Bit              NOT NULL,
		[BoolN] Bit                  NULL,

		CONSTRAINT [PK_Issue3360Table1] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Byte TinyInt(1) -- Byte
SET     @Byte = 0
DECLARE @ByteN TinyInt -- Byte
SET     @ByteN = NULL
DECLARE @Guid UniqueIdentifier -- Guid
SET     @Guid = '00000000-0000-0000-0000-000000000000'
DECLARE @GuidN UniqueIdentifier -- Guid
SET     @GuidN = NULL
DECLARE @Enum NChar(11) -- StringFixedLength
SET     @Enum = N'ENUM1_VALUE'
DECLARE @EnumN NChar -- StringFixedLength
SET     @EnumN = NULL
DECLARE @Bool Bit -- Boolean
SET     @Bool = 0
DECLARE @BoolN Bit -- Boolean
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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Byte TinyInt(1) -- Byte
SET     @Byte = 1
DECLARE @ByteN TinyInt(1) -- Byte
SET     @ByteN = 2
DECLARE @Guid UniqueIdentifier -- Guid
SET     @Guid = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @GuidN UniqueIdentifier -- Guid
SET     @GuidN = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @Enum NChar(11) -- StringFixedLength
SET     @Enum = N'ENUM1_VALUE'
DECLARE @EnumN NChar(11) -- StringFixedLength
SET     @EnumN = N'ENUM2_VALUE'
DECLARE @Bool Bit -- Boolean
SET     @Bool = 1
DECLARE @BoolN Bit -- Boolean
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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Byte TinyInt(1) -- Byte
SET     @Byte = 3
DECLARE @ByteN TinyInt(1) -- Byte
SET     @ByteN = 4
DECLARE @Guid UniqueIdentifier -- Guid
SET     @Guid = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
DECLARE @GuidN UniqueIdentifier -- Guid
SET     @GuidN = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Enum NChar(11) -- StringFixedLength
SET     @Enum = N'ENUM1_VALUE'
DECLARE @EnumN NChar(11) -- StringFixedLength
SET     @EnumN = N'ENUM2_VALUE'
DECLARE @Bool Bit -- Boolean
SET     @Bool = 0
DECLARE @BoolN Bit -- Boolean
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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Variant -- Object
SET     @Id = NULL
DECLARE @Id_1 Variant -- Object
SET     @Id_1 = NULL

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
			NULL as [Byte],
			NULL as [Byte_1],
			NULL as [Guid],
			NULL as [Guid_1],
			CAST(@Id AS NChar) as [Enum],
			CAST(@Id_1 AS NChar) as [EnumN],
			NULL as [Bool],
			NULL as [Bool_1]
		FROM
			[Issue3360Table1] [r]
		WHERE
			[r].[Id] = 1
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
			[r_1].[Id] = 2
	) [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3360Table1]', N'U') IS NOT NULL)
	DROP TABLE [Issue3360Table1]

