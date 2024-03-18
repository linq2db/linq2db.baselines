BeforeExecute
-- SqlCe

DROP TABLE [Task]

BeforeExecute
-- SqlCe

CREATE TABLE [Task]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Task] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [TaskStage]

BeforeExecute
-- SqlCe

CREATE TABLE [TaskStage]
(
	[Id]     Int NOT NULL,
	[TaskId] Int NOT NULL,
	[Actual] Bit NOT NULL,

	CONSTRAINT [PK_TaskStage] PRIMARY KEY ([Id])
)

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
	[it_3].[Name],
	[it_3].[Value_1],
	[t1].[SUM_1]
FROM
	(
		SELECT
			[it_1].[c1] as [Name],
			[it_1].[Id] as [Value_1]
		FROM
			(
				SELECT
					'Id' as [c1],
					[it].[Id]
				FROM
					[Task] [it]
			) [it_1]
		GROUP BY
			[it_1].[c1],
			[it_1].[Id]
	) [it_3]
		OUTER APPLY (
			SELECT
				SUM(CASE
					WHEN [a_ActualStage].[Id] IS NULL
						THEN NULL
					ELSE [a_ActualStage].[Id]
				END) as [SUM_1]
			FROM
				[Task] [it_2]
					LEFT JOIN [TaskStage] [a_ActualStage] ON [it_2].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
			WHERE
				[it_3].[Name] = 'Id' AND [it_3].[Value_1] = [it_2].[Id]
		) [t1]

BeforeExecute
-- SqlCe

DROP TABLE [TaskStage]

BeforeExecute
-- SqlCe

DROP TABLE [Task]

