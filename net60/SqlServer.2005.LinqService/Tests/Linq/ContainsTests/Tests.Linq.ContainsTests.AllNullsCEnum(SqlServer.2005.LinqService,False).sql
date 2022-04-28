﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]    Int          NOT NULL,
		[Int]   Int              NULL,
		[Enum]  NVarChar(5)      NULL,
		[CEnum] VarChar(Max)     NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = NULL
DECLARE @Enum NVarChar(5) -- String
SET     @Enum = NULL
DECLARE @CEnum VarChar(8000) -- AnsiString
SET     @CEnum = NULL

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
VALUES
(
	@Id,
	@Int_1,
	@Enum,
	@CEnum
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = 2
DECLARE @Enum NVarChar(5) -- String
SET     @Enum = N'TWO'
DECLARE @CEnum VarChar(8000) -- AnsiString
SET     @CEnum = N'___Value2___'

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
VALUES
(
	@Id,
	@Int_1,
	@Enum,
	@CEnum
)

BeforeExecute
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

