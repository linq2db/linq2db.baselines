﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [ParameterDeduplication]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[ParameterDeduplication]', N'U') IS NULL)
	CREATE TABLE [ParameterDeduplication]
	(
		[Id]      Int            NOT NULL,
		[Int1]    Int            NOT NULL,
		[Int2]    Int            NOT NULL,
		[IntN1]   Int                NULL,
		[IntN2]   Int                NULL,
		[String1] VarChar(Max)       NULL,
		[String2] NVarChar(4000)     NULL,
		[String3] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ParameterDeduplication] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @int1 Int -- Int32
SET     @int1 = 2
DECLARE @int2 Int -- Int32
SET     @int2 = 2
DECLARE @intN1 Int -- Int32
SET     @intN1 = 2
DECLARE @intN2 Int -- Int32
SET     @intN2 = 2
DECLARE @str1 VarChar(8000) -- AnsiString
SET     @str1 = N'str'
DECLARE @str2 NVarChar(4000) -- String
SET     @str2 = N'str'
DECLARE @str3 NVarChar(4000) -- String
SET     @str3 = N'str'

INSERT INTO [ParameterDeduplication]
(
	[Id],
	[Int1],
	[Int2],
	[IntN1],
	[IntN2],
	[String1],
	[String2],
	[String3]
)
VALUES
(
	@id,
	@int1,
	@int2,
	@intN1,
	@intN2,
	@str1,
	@str2,
	@str3
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 2
DECLARE @int1 Int -- Int32
SET     @int1 = 3
DECLARE @int2 Int -- Int32
SET     @int2 = 4
DECLARE @intN1 Int -- Int32
SET     @intN1 = 5
DECLARE @intN2 Int -- Int32
SET     @intN2 = 6
DECLARE @str1 VarChar(8000) -- AnsiString
SET     @str1 = N'str1'
DECLARE @str2 NVarChar(4000) -- String
SET     @str2 = N'str2'
DECLARE @str3 NVarChar(4000) -- String
SET     @str3 = N'str3'

INSERT INTO [ParameterDeduplication]
(
	[Id],
	[Int1],
	[Int2],
	[IntN1],
	[IntN2],
	[String1],
	[String2],
	[String3]
)
VALUES
(
	@id,
	@int1,
	@int2,
	@intN1,
	@intN2,
	@str1,
	@str2,
	@str3
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Int1],
	[t1].[Int2],
	[t1].[IntN1],
	[t1].[IntN2],
	[t1].[String1],
	[t1].[String2],
	[t1].[String3]
FROM
	[ParameterDeduplication] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [ParameterDeduplication]

