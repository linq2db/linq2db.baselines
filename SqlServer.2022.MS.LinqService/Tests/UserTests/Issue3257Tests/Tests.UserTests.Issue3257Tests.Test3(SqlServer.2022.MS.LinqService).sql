BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	[x].[Id],
	ISNULL((
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

