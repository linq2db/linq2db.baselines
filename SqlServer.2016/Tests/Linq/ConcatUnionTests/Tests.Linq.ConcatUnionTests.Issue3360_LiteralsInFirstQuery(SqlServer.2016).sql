BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue3360Table1]

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016

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
(1,0,NULL,'00000000-0000-0000-0000-000000000000',NULL,N'ENUM1_VALUE',NULL,0,NULL),
(2,1,2,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11','a948600d-de21-4f74-8ac2-9516b287076e',N'ENUM1_VALUE',N'ENUM2_VALUE',1,0),
(4,3,4,'bd3973a5-4323-4dd8-9f4f-df9f93e2a627','bc7b663d-0fde-4327-8f92-5d8cc3a11d11',N'ENUM1_VALUE',N'ENUM2_VALUE',0,1)

BeforeExecute
-- SqlServer.2016
DECLARE @Guid UniqueIdentifier -- Guid
SET     @Guid = '0b8afe27-481c-442e-b8cf-729ddfeece29'
DECLARE @GuidN UniqueIdentifier -- Guid
SET     @GuidN = '0b8afe27-481c-442e-b8cf-729ddfeece30'

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
			CAST(5 AS TinyInt) as [c1],
			CAST(5 AS TinyInt) as [c2],
			CAST(@Guid AS UniqueIdentifier) as [c3],
			CAST(@GuidN AS UniqueIdentifier) as [c4],
			CAST(N'ENUM1_VALUE' AS NChar(11)) as [c5],
			CAST(N'ENUM2_VALUE' AS NChar(11)) as [c6],
			CAST(1 AS Bit) as [c7],
			CAST(0 AS Bit) as [c8]
		FROM
			[Issue3360Table1] [r]
		WHERE
			[r].[Id] = 2
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
			[r_1].[Id] = 4
	) [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue3360Table1]

