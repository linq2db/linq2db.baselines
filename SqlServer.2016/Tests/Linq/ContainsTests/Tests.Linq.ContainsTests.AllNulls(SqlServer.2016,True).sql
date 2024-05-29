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

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NULL

BeforeExecute
-- SqlServer.2016

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NOT NULL

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Src]

