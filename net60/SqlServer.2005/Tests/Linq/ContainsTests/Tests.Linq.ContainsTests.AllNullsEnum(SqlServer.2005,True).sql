BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]   Int         NOT NULL,
		[Int]  Int             NULL,
		[Enum] NVarChar(5)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum]
)
SELECT 1,NULL,NULL UNION ALL
SELECT 2,2,N'TWO'

BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Enum] IS NULL

BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Enum] IS NOT NULL

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

