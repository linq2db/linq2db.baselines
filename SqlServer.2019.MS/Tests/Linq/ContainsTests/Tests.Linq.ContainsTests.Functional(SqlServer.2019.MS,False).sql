BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]    Int         NOT NULL,
		[Int]   Int             NULL,
		[Enum]  NVarChar(5)     NULL,
		[CEnum] VarChar(20)     NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, -2)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, NULL)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, 2)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (NULL, 2)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (-1, 2)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Src]

