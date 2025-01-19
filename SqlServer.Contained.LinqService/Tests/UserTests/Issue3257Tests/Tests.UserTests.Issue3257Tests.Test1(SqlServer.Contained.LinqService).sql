BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
				WHEN [checklist_1].[TriggerType] = 1 THEN N'Hired'
				WHEN [checklist_1].[TriggerType] = 2 THEN N'PreHired'
				WHEN [checklist_1].[TriggerType] = 3 THEN N'Terminated'
				ELSE N''
			END, N',')
		FROM
			[ChecklistTrigger] [checklist_1]
		WHERE
			[x].[Id] = [checklist_1].[ChecklistId]
	), N'None')
FROM
	[Checklist] [x]

