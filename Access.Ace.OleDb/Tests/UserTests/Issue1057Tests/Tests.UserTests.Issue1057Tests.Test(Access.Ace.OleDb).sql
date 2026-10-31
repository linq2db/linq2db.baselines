-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName VarWChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO [Task]
(
	[Id],
	[TargetName]
)
VALUES
(
	@Id,
	@TargetName
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TargetName VarWChar(4) -- String
SET     @TargetName = 'None'

INSERT INTO [Task]
(
	[Id],
	[TargetName]
)
VALUES
(
	@Id,
	@TargetName
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
	[p].[Id],
	[p].[TargetName],
	[a_ActualStage_1].[ActualStageId]
FROM
	[Task] [p]
		LEFT JOIN (
			SELECT
				[a_ActualStage].[TaskId],
				[a_ActualStage].[Id] as [ActualStageId]
			FROM
				[TaskStage] [a_ActualStage]
			WHERE
				[a_ActualStage].[Actual] = True
		) [a_ActualStage_1] ON ([p].[Id] = [a_ActualStage_1].[TaskId])
WHERE
	[p].[TargetName] = 'bda.Requests'

