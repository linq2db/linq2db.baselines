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
SELECT 1,0,NULL,'00000000-0000-0000-0000-000000000000',NULL,'ENUM1_VALUE',NULL,0,NULL UNION ALL
SELECT 2,1,2,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11','a948600d-de21-4f74-8ac2-9516b287076e','ENUM1_VALUE','ENUM2_VALUE',1,0 UNION ALL
SELECT 4,3,4,'bd3973a5-4323-4dd8-9f4f-df9f93e2a627','bc7b663d-0fde-4327-8f92-5d8cc3a11d11','ENUM1_VALUE','ENUM2_VALUE',0,1

BeforeExecute
-- SqlCe
DECLARE @p UniqueIdentifier -- Guid
SET     @p = '0b8afe27-481c-442e-b8cf-729ddfeece29'
DECLARE @p_1 UniqueIdentifier -- Guid
SET     @p_1 = '0b8afe27-481c-442e-b8cf-729ddfeece30'

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
			CAST(@p AS UNIQUEIDENTIFIER) as [Guid],
			CAST(@p_1 AS UNIQUEIDENTIFIER) as [GuidN],
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

