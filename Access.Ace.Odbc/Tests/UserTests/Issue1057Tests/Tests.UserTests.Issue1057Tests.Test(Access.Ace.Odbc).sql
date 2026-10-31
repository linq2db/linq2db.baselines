-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TargetName NVarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO [Task]
(
	[Id],
	[TargetName]
)
VALUES
(
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @TargetName NVarChar(4) -- String
SET     @TargetName = 'None'

INSERT INTO [Task]
(
	[Id],
	[TargetName]
)
VALUES
(
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
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

-- Access.Ace.Odbc AccessODBC
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

