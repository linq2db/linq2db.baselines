-- SqlServer.2022
DECLARE @Pk Int -- Int32
SET     @Pk = 1
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TargetName NVarChar(4000) -- String
SET     @TargetName = N'bda.Requests'

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

-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TaskId Int -- Int32
SET     @TaskId = 1
DECLARE @Actual Bit -- Boolean
SET     @Actual = 1

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

-- SqlServer.2022
SELECT DISTINCT
	[t].[Pk],
	[t].[Id],
	[t].[TargetName],
	[a_ActualStage].[Id],
	[a_ActualStage].[TaskId],
	[a_ActualStage].[Actual]
FROM
	[TaskWithStage] [t]
		LEFT JOIN [TaskStageRecord] [a_ActualStage] ON [t].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1

