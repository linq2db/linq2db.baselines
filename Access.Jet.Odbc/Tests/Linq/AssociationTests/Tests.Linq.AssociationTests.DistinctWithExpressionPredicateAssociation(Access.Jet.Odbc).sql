-- Access.Jet.Odbc AccessODBC
DECLARE @Pk Int -- Int32
SET     @Pk = 1
DECLARE @Id Int -- Int32
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
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TaskId Int -- Int32
SET     @TaskId = 1
DECLARE @Actual Bit -- Boolean
SET     @Actual = True

INSERT INTO [TaskStageRecord]
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

-- Access.Jet.Odbc AccessODBC
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

