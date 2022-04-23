BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]  Int NOT NULL,
		[Int] Int     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Src]
(
	[Id],
	[Int]
)
SELECT 1,NULL UNION ALL
SELECT 2,2

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, -2)

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, NULL)

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, 2)

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (NULL, 2)

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (-1, 2)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

