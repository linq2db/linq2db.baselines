BeforeExecute
-- SqlCe

DROP TABLE [Task]

BeforeExecute
-- SqlCe

CREATE TABLE [Task]
(
	[Id]         Int           NOT NULL,
	[TargetName] NVarChar(255)     NULL,

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
DECLARE @TargetName NVarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO [Task]
(
	[Id],
	[TargetName]
)
VALUES
(
	@Id,
	@TargetName
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @TargetName NVarChar(4) -- String
SET     @TargetName = 'None'

INSERT INTO [Task]
(
	[Id],
	[TargetName]
)
VALUES
(
	@Id,
	@TargetName
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
	[p].[Id],
	[p].[TargetName],
	[a_ActualStage].[Id] as [Id_1]
FROM
	[Task] [p]
		LEFT JOIN [TaskStage] [a_ActualStage] ON [p].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
WHERE
	[p].[TargetName] = 'bda.Requests'

BeforeExecute
-- SqlCe

DROP TABLE [TaskStage]

BeforeExecute
-- SqlCe

DROP TABLE [Task]

