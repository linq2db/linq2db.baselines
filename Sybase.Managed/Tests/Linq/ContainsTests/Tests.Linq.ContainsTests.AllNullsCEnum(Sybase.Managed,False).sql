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
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@CEnum, @CEnum)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@CEnum, @CEnum)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NOT NULL)
	DROP TABLE [Src]

