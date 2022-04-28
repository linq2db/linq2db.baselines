﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]    Int          NOT NULL,
		[Int]   Int              NULL,
		[Enum]  NVarChar(5)      NULL,
		[CEnum] VarChar(Max)     NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
-- SqlServer.2014.MS SqlServer.2014
DECLARE @CEnum VarChar(8000) -- AnsiString
SET     @CEnum = NULL
DECLARE @CEnum_1 VarChar(8000) -- AnsiString
SET     @CEnum_1 = NULL

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@CEnum, @CEnum_1)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @CEnum VarChar(8000) -- AnsiString
SET     @CEnum = NULL
DECLARE @CEnum_1 VarChar(8000) -- AnsiString
SET     @CEnum_1 = NULL

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@CEnum, @CEnum_1)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

