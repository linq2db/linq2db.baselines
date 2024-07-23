BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Dog]', N'U') IS NOT NULL)
	DROP TABLE [Dog]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Dog]', N'U') IS NULL)
	CREATE TABLE [Dog]
	(
		[Id]      Int NOT NULL,
		[OwnerId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Dog]
(
	[Id],
	[OwnerId]
)
SELECT 1,1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Human]', N'U') IS NOT NULL)
	DROP TABLE [Human]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Human]', N'U') IS NULL)
	CREATE TABLE [Human]
	(
		[Id]      Int NOT NULL,
		[HouseId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Human]
(
	[Id],
	[HouseId]
)
SELECT 1,1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[House]', N'U') IS NOT NULL)
	DROP TABLE [House]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[House]', N'U') IS NULL)
	CREATE TABLE [House]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [House]
(
	[Id]
)
SELECT 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Window]', N'U') IS NOT NULL)
	DROP TABLE [Window]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Window]', N'U') IS NULL)
	CREATE TABLE [Window]
	(
		[Id]       Int NOT NULL,
		[Position] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Window]
(
	[Id],
	[Position]
)
SELECT 6,6

BeforeExecute
-- SqlServer.2005

SELECT TOP (1)
	[t1].[Id]
FROM
	[Dog] [x]
		INNER JOIN [Human] [a_Owner] ON [x].[OwnerId] = [a_Owner].[Id]
		INNER JOIN [House] [a_House] ON [a_Owner].[HouseId] = [a_House].[Id]
		LEFT JOIN (
			SELECT TOP (1)
				[a_WindowAtPosition].[Id]
			FROM
				[Window] [a_WindowAtPosition]
			WHERE
				[a_WindowAtPosition].[Position] = 6
		) [t1] ON 1=1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Window]', N'U') IS NOT NULL)
	DROP TABLE [Window]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[House]', N'U') IS NOT NULL)
	DROP TABLE [House]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Human]', N'U') IS NOT NULL)
	DROP TABLE [Human]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Dog]', N'U') IS NOT NULL)
	DROP TABLE [Dog]

