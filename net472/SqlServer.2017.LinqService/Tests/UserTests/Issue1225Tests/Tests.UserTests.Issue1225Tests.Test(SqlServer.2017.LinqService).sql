BeforeExecute
-- SqlServer.2017

CREATE TABLE [Task]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2017

CREATE TABLE [TaskStage]
(
	[Id]     Int NOT NULL,
	[TaskId] Int NOT NULL,
	[Actual] Bit NOT NULL,

	CONSTRAINT [PK_TaskStage] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2017
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
-- SqlServer.2017
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
-- SqlServer.2017
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
-- SqlServer.2017

SELECT
	[t1].[c3],
	[t1].[Id],
	Sum(IIF([t1].[Id_1] IS NULL, NULL, [t1].[Id_1]))
FROM
	(
		SELECT
			N'Id' as [c1],
			[selectParam].[Id] as [c2],
			N'Id' as [c3],
			[selectParam].[Id],
			[a_ActualStage].[Id] as [Id_1]
		FROM
			[Task] [selectParam]
				LEFT JOIN [TaskStage] [a_ActualStage] ON [selectParam].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
	) [t1]
GROUP BY
	[t1].[c2],
	[t1].[c3],
	[t1].[Id]

BeforeExecute
-- SqlServer.2017

DROP TABLE [TaskStage]

BeforeExecute
-- SqlServer.2017

DROP TABLE [Task]

