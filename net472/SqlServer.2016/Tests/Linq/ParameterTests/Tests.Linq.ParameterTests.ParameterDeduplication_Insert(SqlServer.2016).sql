﻿BeforeExecute
-- SqlServer.2016

CREATE TABLE [ParameterDeduplication]
(
	[Id]      Int            NOT NULL,
	[Int1]    Int            NOT NULL,
	[Int2]    Int            NOT NULL,
	[String1] VarChar(Max)       NULL,
	[String2] NVarChar(4000)     NULL,
	[String3] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2016
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @int1 Int -- Int32
SET     @int1 = 2
DECLARE @int2 Int -- Int32
SET     @int2 = 2
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
	[String1],
	[String2],
	[String3]
)
VALUES
(
	@id,
	@int1,
	@int2,
	@str1,
	@str2,
	@str3
)

BeforeExecute
-- SqlServer.2016
DECLARE @id Int -- Int32
SET     @id = 2
DECLARE @int1 Int -- Int32
SET     @int1 = 3
DECLARE @int2 Int -- Int32
SET     @int2 = 4
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
	[String1],
	[String2],
	[String3]
)
VALUES
(
	@id,
	@int1,
	@int2,
	@str1,
	@str2,
	@str3
)

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Int1],
	[t1].[Int2],
	[t1].[String1],
	[t1].[String2],
	[t1].[String3]
FROM
	[ParameterDeduplication] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [ParameterDeduplication]

