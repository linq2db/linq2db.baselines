BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[ParameterDeduplication]', N'U') IS NOT NULL)
	DROP TABLE [ParameterDeduplication]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
(1,0,0,NULL,NULL,NULL,NULL,NULL),
(2,0,0,NULL,NULL,NULL,NULL,NULL)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[ParameterDeduplication]
SET
	[Int1] = @int1,
	[Int2] = @int2,
	[IntN1] = @intN1,
	[IntN2] = @intN2,
	[String1] = @str1,
	[String2] = @str2,
	[String3] = @str3
WHERE
	[ParameterDeduplication].[Id] = @id

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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
DECLARE @id Int -- Int32
SET     @id = 2

UPDATE
	[ParameterDeduplication]
SET
	[Int1] = @int1,
	[Int2] = @int2,
	[IntN1] = @intN1,
	[IntN2] = @intN2,
	[String1] = @str1,
	[String2] = @str2,
	[String3] = @str3
WHERE
	[ParameterDeduplication].[Id] = @id

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[ParameterDeduplication]', N'U') IS NOT NULL)
	DROP TABLE [ParameterDeduplication]

