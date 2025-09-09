BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
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
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
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
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
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
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
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

