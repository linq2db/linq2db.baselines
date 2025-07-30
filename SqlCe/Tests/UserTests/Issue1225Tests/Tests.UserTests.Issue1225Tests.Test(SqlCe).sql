BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Task]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [Task]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @TaskId Int -- Int32
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
-- SqlCe

SELECT
	'Id' as [Name],
	[it].[Id],
	SUM([a_ActualStage].[Id]) as [Value_1]
FROM
	[Task] [it]
		LEFT JOIN [TaskStage] [a_ActualStage] ON [it].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
GROUP BY
	[it].[Id]

