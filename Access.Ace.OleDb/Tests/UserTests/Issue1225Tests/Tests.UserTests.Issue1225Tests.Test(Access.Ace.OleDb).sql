BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Task]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Task]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TaskStage]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [TaskStage]
(
	[Id]     Int NOT NULL,
	[TaskId] Int NOT NULL,
	[Actual] Bit NOT NULL,

	CONSTRAINT [PK_TaskStage] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

SELECT
	'Id',
	[it].[Id],
	SUM([a_ActualStage].[Id])
FROM
	[Task] [it]
		LEFT JOIN [TaskStage] [a_ActualStage] ON ([it].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = True)
GROUP BY
	[it].[Id]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TaskStage]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Task]

