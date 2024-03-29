﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Tasks]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Tasks]', N'U') IS NULL)
	CREATE TABLE [Tasks]
	(
		[Id]          Int               NOT NULL IDENTITY,
		[DateBegin]   DateTime2         NOT NULL,
		[DateEnd]     DateTime2             NULL,
		[DirectionId] UniqueIdentifier  NOT NULL,
		[Text]        NVarChar(4000)    NOT NULL,
		[TargetName]  NVarChar(4000)    NOT NULL,
		[TargetId]    Int               NOT NULL,
		[ParentId]    Int                   NULL,

		CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TaskStages]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[TaskStages]', N'U') IS NULL)
	CREATE TABLE [TaskStages]
	(
		[Id]           Int        NOT NULL IDENTITY,
		[TaskId]       Int        NOT NULL,
		[StageId]      Int        NOT NULL,
		[SwitchDate]   DateTime2  NOT NULL,
		[Actual]       Bit        NOT NULL,
		[WorkReportId] Int            NULL,
		[UserId]       Int            NULL,

		CONSTRAINT [PK_TaskStages] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Assignments]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Assignments]', N'U') IS NULL)
	CREATE TABLE [Assignments]
	(
		[Id]          Int               NOT NULL IDENTITY,
		[EmployeeId]  Int               NOT NULL,
		[DateAssign]  DateTime2         NOT NULL,
		[DateRevoke]  DateTime2             NULL,
		[DirectionId] UniqueIdentifier  NOT NULL,
		[TargetName]  NVarChar(4000)    NOT NULL,
		[TargetId]    Int               NOT NULL,

		CONSTRAINT [PK_Assignments] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @directionId UniqueIdentifier -- Guid
SET     @directionId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO [Tasks]
(
	[DirectionId],
	[TargetId],
	[TargetName],
	[Text],
	[DateBegin]
)
VALUES
(
	@directionId,
	1,
	N'TN',
	N'SomeText',
	CURRENT_TIMESTAMP
)

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @directionId UniqueIdentifier -- Guid
SET     @directionId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO [Assignments]
(
	[DirectionId],
	[TargetId],
	[TargetName],
	[EmployeeId],
	[DateAssign]
)
VALUES
(
	@directionId,
	1,
	N'TN',
	10,
	CURRENT_TIMESTAMP
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @taskId Int -- Int32
SET     @taskId = 1

INSERT INTO [TaskStages]
(
	[Actual],
	[TaskId],
	[StageId],
	[SwitchDate]
)
VALUES
(
	1,
	@taskId,
	800,
	CURRENT_TIMESTAMP
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @employeeId Int -- Int32
SET     @employeeId = 10

SELECT
	[it].[Id],
	[it].[DateBegin],
	[it].[DateEnd],
	[it].[DirectionId],
	[it].[Text],
	[it].[TargetName],
	[it].[TargetId],
	[it].[ParentId]
FROM
	(
		SELECT DISTINCT
			[t].[Id],
			[t].[DateBegin],
			[t].[DateEnd],
			[t].[DirectionId],
			[t].[Text],
			[t].[TargetName],
			[t].[TargetId],
			[t].[ParentId]
		FROM
			[Tasks] [t]
				INNER JOIN [Assignments] [a] ON [t].[DirectionId] = [a].[DirectionId] AND [t].[TargetId] = [a].[TargetId] AND [t].[TargetName] = [a].[TargetName]
		WHERE
			[a].[EmployeeId] = @employeeId AND ([a].[DateRevoke] IS NULL OR [a].[DateRevoke] > GetDate())
	) [it]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TaskStages] [d]
		WHERE
			[it].[Id] = [d].[TaskId] AND [d].[Actual] = 1 AND ([d].[StageId] < 9000 OR [d].[StageId] IS NULL)
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Assignments]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TaskStages]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Tasks]

