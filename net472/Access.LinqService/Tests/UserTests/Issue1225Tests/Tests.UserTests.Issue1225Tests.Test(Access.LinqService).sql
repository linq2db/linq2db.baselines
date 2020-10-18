BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Task]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [TaskStage]
(
	[Id]     Int NOT NULL,
	[TaskId] Int NOT NULL,
	[Actual] Bit NOT NULL,

	CONSTRAINT [PK_TaskStage] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
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
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
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
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual Boolean
SET     @Actual = True

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
-- Access AccessOleDb

SELECT
	[t1].[c3],
	[t1].[Id],
	Sum(Iif([t1].[Id_1] IS NULL, NULL, [t1].[Id_1]))
FROM
	(
		SELECT
			'Id' as [c1],
			[selectParam].[Id] as [c2],
			'Id' as [c3],
			[selectParam].[Id],
			[a_ActualStage].[Id] as [Id_1]
		FROM
			[Task] [selectParam]
				LEFT JOIN [TaskStage] [a_ActualStage] ON ([selectParam].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = True)
	) [t1]
GROUP BY
	[t1].[c2],
	[t1].[c3],
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TaskStage]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Task]

