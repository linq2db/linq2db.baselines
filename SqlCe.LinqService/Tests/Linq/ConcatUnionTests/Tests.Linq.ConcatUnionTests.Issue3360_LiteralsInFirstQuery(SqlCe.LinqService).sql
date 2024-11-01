BeforeExecute
-- SqlCe

DROP TABLE [Issue3360Table1]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3360Table1]
(
	[Id]    Int              NOT NULL,
	[Byte]  TinyInt          NOT NULL,
	[ByteN] TinyInt              NULL,
	[Guid]  UNIQUEIDENTIFIER NOT NULL,
	[GuidN] UNIQUEIDENTIFIER     NULL,
	[Enum]  NChar(11)        NOT NULL,
	[EnumN] NChar(11)            NULL,
	[Bool]  Bit              NOT NULL,
	[BoolN] Bit                  NULL,

	CONSTRAINT [PK_Issue3360Table1] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Byte TinyInt -- Byte
SET     @Byte = 0
DECLARE @ByteN TinyInt -- Byte
SET     @ByteN = NULL
DECLARE @Guid UniqueIdentifier -- Guid
SET     @Guid = '00000000-0000-0000-0000-000000000000'
DECLARE @GuidN UniqueIdentifier -- Guid
SET     @GuidN = NULL
DECLARE @Enum NVarChar(11) -- String
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN NVarChar -- String
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
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Byte TinyInt -- Byte
SET     @Byte = 1
DECLARE @ByteN TinyInt -- Byte
SET     @ByteN = 2
DECLARE @Guid UniqueIdentifier -- Guid
SET     @Guid = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @GuidN UniqueIdentifier -- Guid
SET     @GuidN = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @Enum NVarChar(11) -- String
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN NVarChar(11) -- String
SET     @EnumN = 'ENUM2_VALUE'
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
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Byte TinyInt -- Byte
SET     @Byte = 3
DECLARE @ByteN TinyInt -- Byte
SET     @ByteN = 4
DECLARE @Guid UniqueIdentifier -- Guid
SET     @Guid = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
DECLARE @GuidN UniqueIdentifier -- Guid
SET     @GuidN = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Enum NVarChar(11) -- String
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN NVarChar(11) -- String
SET     @EnumN = 'ENUM2_VALUE'
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
-- SqlCe
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '0b8afe27-481c-442e-b8cf-729ddfeece29'
DECLARE @Id_1 UniqueIdentifier -- Guid
SET     @Id_1 = '0b8afe27-481c-442e-b8cf-729ddfeece30'

SELECT
	[t1].[Id],
	[t1].[Byte],
	[t1].[Byte_1],
	[t1].[Guid],
	[t1].[GuidN],
	[t1].[Enum],
	[t1].[EnumN],
	[t1].[Bool],
	[t1].[BoolN]
FROM
	(
		SELECT
			[r].[Id],
			CAST(5 AS TinyInt) as [Byte],
			CAST(5 AS TinyInt) as [Byte_1],
			CAST(@Id AS UNIQUEIDENTIFIER) as [Guid],
			CAST(@Id_1 AS UNIQUEIDENTIFIER) as [GuidN],
			CAST('ENUM1_VALUE' AS NChar(11)) as [Enum],
			CAST('ENUM2_VALUE' AS NChar(11)) as [EnumN],
			CAST(1 AS Bit) as [Bool],
			CAST(0 AS Bit) as [BoolN]
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
			[r_1].[GuidN],
			[r_1].[Enum],
			[r_1].[EnumN],
			[r_1].[Bool],
			[r_1].[BoolN]
		FROM
			[Issue3360Table1] [r_1]
		WHERE
			[r_1].[Id] = 4
	) [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3360Table1]

