﻿BeforeExecute
-- SqlServer.2008

CREATE TABLE [Task]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [TaskStage]
(
	[Id]     Int NOT NULL,
	[TaskId] Int NOT NULL,
	[Actual] Bit NOT NULL,

	CONSTRAINT [PK_TaskStage] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008

SELECT 
	N'Id', 
	[selectParam].[Id], 
	Sum(CASE
		WHEN [a_ActualStage].[Id] IS NULL
			THEN NULL
		ELSE [a_ActualStage].[Id]
	END)
FROM
	[Task] [selectParam]
		LEFT JOIN [TaskStage] [a_ActualStage] ON [selectParam].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
GROUP BY
	[selectParam].[Id]

BeforeExecute
-- SqlServer.2008

DROP TABLE [TaskStage]

BeforeExecute
-- SqlServer.2008

DROP TABLE [Task]

