BeforeExecute
-- SqlCe

DROP TABLE [Task]

BeforeExecute
-- SqlCe

CREATE TABLE [Task]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Task] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [TaskStage]

BeforeExecute
-- SqlCe

CREATE TABLE [TaskStage]
(
	[Id]     Int NOT NULL,
	[TaskId] Int NOT NULL,
	[Actual] Bit NOT NULL,

	CONSTRAINT [PK_TaskStage] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe

SELECT
	'Id' as [Name],
	[it].[Id] as [Value_1],
	SUM(CASE
		WHEN [a_ActualStage].[Id] IS NULL THEN NULL
		ELSE [a_ActualStage_1].[Id]
	END) as [SUM_1]
FROM
	[Task] [it]
		LEFT JOIN [TaskStage] [a_ActualStage] ON [it].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
		LEFT JOIN [TaskStage] [a_ActualStage_1] ON [it].[Id] = [a_ActualStage_1].[TaskId] AND [a_ActualStage_1].[Actual] = 1
GROUP BY
	[it].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [TaskStage]

BeforeExecute
-- SqlCe

DROP TABLE [Task]

