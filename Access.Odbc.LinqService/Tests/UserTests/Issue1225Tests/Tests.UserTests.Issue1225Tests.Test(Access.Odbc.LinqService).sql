BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Task]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Task]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TaskStage]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [TaskStage]
(
	[Id]     Int NOT NULL,
	[TaskId] Int NOT NULL,
	[Actual] Bit NOT NULL,

	CONSTRAINT [PK_TaskStage] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Task]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [Task]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @TaskId Int -- Int32
SET     @TaskId = 1
DECLARE @Actual Bit -- Boolean
SET     @Actual = True

INSERT INTO [TaskStage]
(
	[Id],
	[TaskId],
	[Actual]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	'Id',
	[it].[Id],
	SUM(IIF([a_ActualStage].[Id] IS NULL, NULL, [a_ActualStage_1].[Id]))
FROM
	([Task] [it]
		LEFT JOIN [TaskStage] [a_ActualStage] ON ([it].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = True))
		LEFT JOIN [TaskStage] [a_ActualStage_1] ON ([it].[Id] = [a_ActualStage_1].[TaskId] AND [a_ActualStage_1].[Actual] = True)
GROUP BY
	[it].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TaskStage]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Task]

