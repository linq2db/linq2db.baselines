-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [GroupedTask]
(
	[Id]
)
VALUES
(
	@Id
)

-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [GroupedTask]
(
	[Id]
)
VALUES
(
	@Id
)

-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @TaskId Int -- Int32
SET     @TaskId = 1
DECLARE @Actual Bit -- Boolean
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

-- SqlServer.2012.MS SqlServer.2012
SELECT
	N'Id',
	[it].[Id],
	SUM([a_ActualStage].[Id])
FROM
	[GroupedTask] [it]
		LEFT JOIN [GroupedTaskStage] [a_ActualStage] ON [it].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
GROUP BY
	[it].[Id]

