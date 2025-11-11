-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x_1].[Id],
	[x_1].[Triggers_1]
FROM
	(
		SELECT
			IIF(EXISTS(
				SELECT
					*
				FROM
					[ChecklistTrigger] [a_ChecklistTriggers]
				WHERE
					[x].[Id] = [a_ChecklistTriggers].[ChecklistId]
			), (
				SELECT
					STRING_AGG(CASE
						WHEN [a_ChecklistTriggers_1].[TriggerType] = 1 THEN N'Hired'
						WHEN [a_ChecklistTriggers_1].[TriggerType] = 2 THEN N'PreHired'
						WHEN [a_ChecklistTriggers_1].[TriggerType] = 3 THEN N'Terminated'
						ELSE N''
					END, N',')
				FROM
					[ChecklistTrigger] [a_ChecklistTriggers_1]
				WHERE
					[x].[Id] = [a_ChecklistTriggers_1].[ChecklistId]
			), N'None') as [Triggers_1],
			[x].[Id]
		FROM
			[Checklist] [x]
	) [x_1]
WHERE
	[x_1].[Triggers_1] LIKE N'%H%' ESCAPE N'~'

