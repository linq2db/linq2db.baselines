BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Task]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Task]', N'U') IS NULL)
	CREATE TABLE [Task]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TaskStage]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[TaskStage]', N'U') IS NULL)
	CREATE TABLE [TaskStage]
	(
		[Id]     Int NOT NULL,
		[TaskId] Int NOT NULL,
		[Actual] Bit NOT NULL,

		CONSTRAINT [PK_TaskStage] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[it_1].[c1],
	[it_1].[Id],
	SUM(IIF([it_1].[Id_1] IS NULL, NULL, [it_1].[Id_1]))
FROM
	(
		SELECT
			N'Id' as [c1],
			[it].[Id],
			[a_ActualStage].[Id] as [Id_1]
		FROM
			[Task] [it]
				LEFT JOIN [TaskStage] [a_ActualStage] ON [it].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
	) [it_1]
GROUP BY
	[it_1].[c1],
	[it_1].[Id]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TaskStage]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Task]

