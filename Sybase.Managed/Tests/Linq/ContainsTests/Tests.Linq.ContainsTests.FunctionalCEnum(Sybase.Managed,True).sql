BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NULL)
	EXECUTE('
		CREATE TABLE [Src]
		(
			[Id]    Int         NOT NULL,
			[Int]   Int             NULL,
			[Enum]  NVarChar(5)     NULL,
			[CEnum] VarChar(20)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
SELECT 1,NULL,NULL,NULL UNION ALL
SELECT 2,2,'TWO','___Value2___'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- AnsiString
SET     @In_1 = '___Value4___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] IN (@In) OR [s].[CEnum] IS NULL)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- AnsiString
SET     @In_1 = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] NOT IN (@NotIn) AND [s].[CEnum] IS NOT NULL)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value3___'
DECLARE @NotIn_1 VarChar(12) -- AnsiString
SET     @NotIn_1 = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] NOT IN (@NotIn, @NotIn_1) OR [s].[CEnum] IS NULL)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NOT NULL)
	DROP TABLE [Src]

