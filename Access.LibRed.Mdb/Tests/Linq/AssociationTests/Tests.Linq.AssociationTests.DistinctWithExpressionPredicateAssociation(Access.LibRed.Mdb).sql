-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Pk  -- Int32
SET     @Pk = 1
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @TargetName NVarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO [TaskWithStage]
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @TaskId  -- Int32
SET     @TaskId = 1
DECLARE @Actual  -- Boolean
SET     @Actual = True

INSERT INTO [TaskStageRecord]
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT DISTINCT
	[t].[Pk],
	[t].[Id],
	[t].[TargetName],
	[a_ActualStage].[Id] as [Id_1],
	[a_ActualStage].[TaskId],
	[a_ActualStage].[Actual]
FROM
	[TaskWithStage] [t]
		LEFT JOIN [TaskStageRecord] [a_ActualStage] ON ([t].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = True)

