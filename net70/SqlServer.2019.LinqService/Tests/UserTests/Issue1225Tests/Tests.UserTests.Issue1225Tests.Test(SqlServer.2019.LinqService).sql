BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Task]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[Task]', N'U') IS NULL)
	CREATE TABLE [Task]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TaskStage]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[TaskStage]', N'U') IS NULL)
	CREATE TABLE [TaskStage]
	(
		[Id]     Int NOT NULL,
		[TaskId] Int NOT NULL,
		[Actual] Bit NOT NULL,

		CONSTRAINT [PK_TaskStage] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Task]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [Task]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @TaskId Int -- Int32
SET     @TaskId = 1
DECLARE @Actual Bit -- Boolean
SET     @Actual = 1

INSERT INTO [TaskStage]
(
	[Id],
	[TaskId],
	[Actual]
)
VALUES
(
	@Id,
	@TaskId,
	@Actual
)

BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[Name],
	[t1].[Key_1],
	Sum(IIF([t1].[Id] IS NULL, NULL, [t1].[Id]))
FROM
	(
		SELECT
			N'Id' as [Name],
			[selectParam].[Id] as [Key_1],
			[a_ActualStage].[Id]
		FROM
			[Task] [selectParam]
				LEFT JOIN [TaskStage] [a_ActualStage] ON [selectParam].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
	) [t1]
GROUP BY
	[t1].[Name],
	[t1].[Key_1]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TaskStage]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Task]

