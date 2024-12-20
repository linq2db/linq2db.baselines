BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Task]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Task]', N'U') IS NULL)
	CREATE TABLE [Task]
	(
		[Id]   Int             NOT NULL IDENTITY,
		[Name] NVarChar(4000)  NOT NULL,

		CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [TaskCategory]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[TaskCategory]', N'U') IS NULL)
	CREATE TABLE [TaskCategory]
	(
		[Id]         Int NOT NULL,
		[TaskId]     Int NOT NULL,
		[CategoryId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Category]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Category]', N'U') IS NULL)
	CREATE TABLE [Category]
	(
		[Id]   Int             NOT NULL IDENTITY,
		[Name] NVarChar(4000)  NOT NULL,

		CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t].[Id],
	[t].[Name],
	Stuff((
		SELECT
			N',' + [c_1].[Name]
		FROM
			[Category] [c_1]
		WHERE
			[c_1].[Id] = [tc].[CategoryId]
	), 1, 1, N'')
FROM
	[Task] [t]
		LEFT JOIN [TaskCategory] [tc] ON [t].[Id] = [tc].[TaskId]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Category]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [TaskCategory]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Task]

