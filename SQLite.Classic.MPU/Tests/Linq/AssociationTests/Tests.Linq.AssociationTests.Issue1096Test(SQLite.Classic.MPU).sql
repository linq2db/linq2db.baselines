-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Pk  -- Int32
SET     @Pk = 1
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @TargetName NVarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO [Issue1096Task]
(
	[Pk],
	[Id],
	[TargetName]
)
VALUES
(
	@Pk,
	@Id,
	@TargetName
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @TaskId  -- Int32
SET     @TaskId = 1
DECLARE @Actual  -- Boolean
SET     @Actual = 1

INSERT INTO [Issue1096TaskStage]
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

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT DISTINCT
	[t].[Pk],
	[t].[Id],
	[t].[TargetName],
	[a_ActualStage].[Id],
	[a_ActualStage].[TaskId],
	[a_ActualStage].[Actual]
FROM
	[Issue1096Task] [t]
		LEFT JOIN [Issue1096TaskStage] [a_ActualStage] ON [t].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1

