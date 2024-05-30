BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]    Int         NOT NULL,
		[Int]   Int             NULL,
		[Enum]  NVarChar(5)     NULL,
		[CEnum] VarChar(20)     NULL
	)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int Int -- Int32
SET     @Int = NULL
DECLARE @Enum NVarChar(5) -- String
SET     @Enum = NULL
DECLARE @CEnum VarChar(20) -- AnsiString
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
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int Int -- Int32
SET     @Int = 2
DECLARE @Enum NVarChar(5) -- String
SET     @Enum = N'TWO'
DECLARE @CEnum VarChar(20) -- AnsiString
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
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- SqlServer.2012

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NULL

BeforeExecute
-- SqlServer.2012

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NOT NULL

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

