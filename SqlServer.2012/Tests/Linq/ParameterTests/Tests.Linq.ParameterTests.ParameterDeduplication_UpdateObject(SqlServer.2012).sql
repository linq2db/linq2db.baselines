﻿BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[ParameterDeduplication]', N'U') IS NOT NULL)
	DROP TABLE [ParameterDeduplication]

BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012

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
-- SqlServer.2012
DECLARE @Int1 Int -- Int32
SET     @Int1 = 2
DECLARE @Int2 Int -- Int32
SET     @Int2 = 2
DECLARE @IntN1 Int -- Int32
SET     @IntN1 = 2
DECLARE @IntN2 Int -- Int32
SET     @IntN2 = 2
DECLARE @String1 VarChar(8000) -- AnsiString
SET     @String1 = N'str'
DECLARE @String2 NVarChar(4000) -- String
SET     @String2 = N'str'
DECLARE @String3 NVarChar(4000) -- String
SET     @String3 = N'str'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[ParameterDeduplication]
SET
	[Int1] = @Int1,
	[Int2] = @Int2,
	[IntN1] = @IntN1,
	[IntN2] = @IntN2,
	[String1] = @String1,
	[String2] = @String2,
	[String3] = @String3
WHERE
	[ParameterDeduplication].[Id] = @Id

BeforeExecute
-- SqlServer.2012
DECLARE @Int1 Int -- Int32
SET     @Int1 = 3
DECLARE @Int2 Int -- Int32
SET     @Int2 = 4
DECLARE @IntN1 Int -- Int32
SET     @IntN1 = 5
DECLARE @IntN2 Int -- Int32
SET     @IntN2 = 6
DECLARE @String1 VarChar(8000) -- AnsiString
SET     @String1 = N'str1'
DECLARE @String2 NVarChar(4000) -- String
SET     @String2 = N'str2'
DECLARE @String3 NVarChar(4000) -- String
SET     @String3 = N'str3'
DECLARE @Id Int -- Int32
SET     @Id = 2

UPDATE
	[ParameterDeduplication]
SET
	[Int1] = @Int1,
	[Int2] = @Int2,
	[IntN1] = @IntN1,
	[IntN2] = @IntN2,
	[String1] = @String1,
	[String2] = @String2,
	[String3] = @String3
WHERE
	[ParameterDeduplication].[Id] = @Id

BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012

IF (OBJECT_ID(N'[ParameterDeduplication]', N'U') IS NOT NULL)
	DROP TABLE [ParameterDeduplication]

