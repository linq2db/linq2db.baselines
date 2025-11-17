-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[x].[Id],
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
	), N'None')
FROM
	[Checklist] [x]

