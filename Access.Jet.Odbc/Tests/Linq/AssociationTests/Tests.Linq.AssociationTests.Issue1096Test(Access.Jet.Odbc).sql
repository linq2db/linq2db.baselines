-- Access.Jet.Odbc AccessODBC
DECLARE @Pk Int -- Int32
SET     @Pk = 1
DECLARE @Id Int -- Int32
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

INSERT INTO [Issue1096TaskStage]
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
	[a_ActualStage_1].[Id] as [Id_1],
	[a_ActualStage_1].[TaskId],
	[a_ActualStage_1].[Actual]
FROM
	[Issue1096Task] [t]
		LEFT JOIN (
			SELECT
				[a_ActualStage].[TaskId],
				[a_ActualStage].[Actual],
				[a_ActualStage].[Id]
			FROM
				[Issue1096TaskStage] [a_ActualStage]
			WHERE
				[a_ActualStage].[Actual] = True
		) [a_ActualStage_1] ON ([t].[Id] = [a_ActualStage_1].[TaskId])

