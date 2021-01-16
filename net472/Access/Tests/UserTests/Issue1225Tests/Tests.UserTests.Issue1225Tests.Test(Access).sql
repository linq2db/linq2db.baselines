BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Task]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [TaskStage]
(
	[Id]     Int NOT NULL,
	[TaskId] Int NOT NULL,
	[Actual] Bit NOT NULL,

	CONSTRAINT [PK_TaskStage] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
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
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
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
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual Boolean
SET     @Actual = True

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
-- Access AccessOleDb

SELECT
	'Id',
	[selectParam].[Id],
	Sum(Iif([a_ActualStage].[Id] IS NULL, NULL, [a_ActualStage].[Id]))
FROM
	[Task] [selectParam]
		LEFT JOIN [TaskStage] [a_ActualStage] ON ([selectParam].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = True)
GROUP BY
	[selectParam].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TaskStage]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Task]

