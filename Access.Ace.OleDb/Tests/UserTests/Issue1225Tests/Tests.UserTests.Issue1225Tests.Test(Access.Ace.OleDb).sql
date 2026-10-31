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

-- Access.Ace.OleDb AccessOleDb
SELECT
	'Id',
	[it].[Id],
	SUM([a_ActualStage_1].[Id])
FROM
	[Task] [it]
		LEFT JOIN (
			SELECT
				[a_ActualStage].[TaskId],
				[a_ActualStage].[Id]
			FROM
				[TaskStage] [a_ActualStage]
			WHERE
				[a_ActualStage].[Actual] = True
		) [a_ActualStage_1] ON ([it].[Id] = [a_ActualStage_1].[TaskId])
GROUP BY
	[it].[Id]

