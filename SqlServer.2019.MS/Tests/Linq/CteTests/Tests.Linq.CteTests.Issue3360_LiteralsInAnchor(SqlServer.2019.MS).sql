BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue3360Table1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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
-- SqlServer.2019.MS SqlServer.2019

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
-- SqlServer.2019.MS SqlServer.2019

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
		CAST('0b8afe27-481c-442e-b8cf-729ddfeece29' AS UniqueIdentifier),
		CAST('0b8afe27-481c-442e-b8cf-729ddfeece30' AS UniqueIdentifier),
		CAST(N'ENUM1_VALUE' AS NChar(11)),
		CAST(N'ENUM2_VALUE' AS NChar(11)),
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
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue3360Table1]

