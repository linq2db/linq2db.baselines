BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]    Int         NOT NULL,
		[Int]   Int             NULL,
		[Enum]  NVarChar(5)     NULL,
		[CEnum] VarChar(20)     NULL
	)

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016
DECLARE @In VarChar(20) -- AnsiString
SET     @In = N'___Value3___'
DECLARE @In_1 VarChar(20) -- AnsiString
SET     @In_1 = N'___Value4___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- SqlServer.2016
DECLARE @In VarChar(20) -- AnsiString
SET     @In = N'___Value3___'
DECLARE @In_1 VarChar(20) -- AnsiString
SET     @In_1 = NULL

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- SqlServer.2016
DECLARE @In VarChar(20) -- AnsiString
SET     @In = N'___Value3___'
DECLARE @In_1 VarChar(20) -- AnsiString
SET     @In_1 = N'___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- SqlServer.2016
DECLARE @NotIn VarChar(20) -- AnsiString
SET     @NotIn = NULL
DECLARE @NotIn_1 VarChar(20) -- AnsiString
SET     @NotIn_1 = N'___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@NotIn, @NotIn_1)

BeforeExecute
-- SqlServer.2016
DECLARE @NotIn VarChar(20) -- AnsiString
SET     @NotIn = N'___Value3___'
DECLARE @NotIn_1 VarChar(20) -- AnsiString
SET     @NotIn_1 = N'___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@NotIn, @NotIn_1)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Src]

