BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]    Int         NOT NULL,
		[Int]   Int             NULL,
		[Enum]  NVarChar(5)     NULL,
		[CEnum] VarChar(20)     NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
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
-- SqlServer.2012.MS SqlServer.2012
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @CEnum VarChar(20) -- AnsiString
SET     @CEnum = N'___Value3___'
DECLARE @CEnum_1 VarChar(20) -- AnsiString
SET     @CEnum_1 = N'___Value4___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@CEnum, @CEnum_1)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @CEnum VarChar(20) -- AnsiString
SET     @CEnum = N'___Value3___'
DECLARE @CEnum_1 VarChar(20) -- AnsiString
SET     @CEnum_1 = NULL

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@CEnum, @CEnum_1)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @CEnum VarChar(20) -- AnsiString
SET     @CEnum = N'___Value3___'
DECLARE @CEnum_1 VarChar(20) -- AnsiString
SET     @CEnum_1 = N'___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@CEnum, @CEnum_1)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @CEnum VarChar(20) -- AnsiString
SET     @CEnum = NULL
DECLARE @CEnum_1 VarChar(20) -- AnsiString
SET     @CEnum_1 = N'___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@CEnum, @CEnum_1)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @CEnum VarChar(20) -- AnsiString
SET     @CEnum = N'___Value3___'
DECLARE @CEnum_1 VarChar(20) -- AnsiString
SET     @CEnum_1 = N'___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@CEnum, @CEnum_1)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

