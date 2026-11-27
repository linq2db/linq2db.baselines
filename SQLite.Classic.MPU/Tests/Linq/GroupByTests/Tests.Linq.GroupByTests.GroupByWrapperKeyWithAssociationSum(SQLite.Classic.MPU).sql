-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [GroupedTask]
(
	[Id]
)
VALUES
(
	@Id
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [GroupedTask]
(
	[Id]
)
VALUES
(
	@Id
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual Integer -- Boolean
SET     @Actual = 1

INSERT INTO [GroupedTaskStage]
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
SELECT
	'Id',
	[it].[Id],
	SUM([a_ActualStage].[Id])
FROM
	[GroupedTask] [it]
		LEFT JOIN [GroupedTaskStage] [a_ActualStage] ON [it].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
GROUP BY
	[it].[Id]

