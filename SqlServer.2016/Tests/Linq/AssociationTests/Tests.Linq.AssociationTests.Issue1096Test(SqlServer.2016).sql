BeforeExecute
-- SqlServer.2016
DECLARE @Pk Int -- Int32
SET     @Pk = 1
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TargetName NVarChar(4000) -- String
SET     @TargetName = N'bda.Requests'

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

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TaskId Int -- Int32
SET     @TaskId = 1
DECLARE @Actual Bit -- Boolean
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

BeforeExecute
-- SqlServer.2016

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

