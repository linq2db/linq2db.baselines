﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]    Int         NOT NULL,
		[Int]   Int             NULL,
		[Enum]  NVarChar(5)     NULL,
		[CEnum] VarChar(20)     NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
VALUES
(1,NULL,NULL,NULL),
(2,2,N'TWO','___Value2___')

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @CEnum VarChar(20) -- AnsiString
SET     @CEnum = NULL

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@CEnum, @CEnum)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @CEnum VarChar(20) -- AnsiString
SET     @CEnum = NULL

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@CEnum, @CEnum)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Src]

