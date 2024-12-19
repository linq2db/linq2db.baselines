BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Tasks]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [TaskStages]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Assignments]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
DECLARE @employeeId Int -- Int32
SET     @employeeId = 10

SELECT DISTINCT
	[it].[Id],
	[it].[DateBegin],
	[it].[DateEnd],
	[it].[DirectionId],
	[it].[Text],
	[it].[TargetName],
	[it].[TargetId],
	[it].[ParentId]
FROM
	[Tasks] [it]
		INNER JOIN [Assignments] [a] ON [it].[DirectionId] = [a].[DirectionId] AND [it].[TargetId] = [a].[TargetId] AND [it].[TargetName] = [a].[TargetName]
WHERE
	[a].[EmployeeId] = @employeeId AND ([a].[DateRevoke] IS NULL OR [a].[DateRevoke] > GetDate()) AND
	EXISTS(
		SELECT
			*
		FROM
			[TaskStages] [d]
		WHERE
			[it].[Id] = [d].[TaskId] AND [d].[Actual] = 1 AND [d].[StageId] < 9000
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Assignments]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [TaskStages]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Tasks]

