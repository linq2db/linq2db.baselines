BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]    Int         NOT NULL,
		[Int]   Int             NULL,
		[Enum]  NVarChar(5)     NULL,
		[CEnum] VarChar(20)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
SELECT 1,NULL,NULL,NULL UNION ALL
SELECT 2,2,N'TWO','___Value2___'

BeforeExecute
-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (NULL, NULL)

BeforeExecute
-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (NULL, NULL)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

