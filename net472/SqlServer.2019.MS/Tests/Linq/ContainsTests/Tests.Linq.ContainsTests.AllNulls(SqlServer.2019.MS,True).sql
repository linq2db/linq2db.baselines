BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]   Int         NOT NULL,
		[Int]  Int             NULL,
		[Enum] NVarChar(5)     NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum]
)
VALUES
(1,NULL,NULL),
(2,2,N'TWO')

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NULL

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NOT NULL

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Src]

