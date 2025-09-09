BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName UniVarChar(12) -- String
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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TargetName UniVarChar(4) -- String
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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TaskId Integer -- Int32
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
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[p].[Id],
	[p].[TargetName],
	[a_ActualStage].[Id]
FROM
	[Task] [p]
		LEFT JOIN [TaskStage] [a_ActualStage] ON [p].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
WHERE
	[p].[TargetName] = 'bda.Requests'

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[p].[TargetName],
	[p].[Id],
	[a_ActualStage].[Id]
FROM
	[Task] [p]
		LEFT JOIN [TaskStage] [a_ActualStage] ON [p].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
ORDER BY
	[p].[Id]

