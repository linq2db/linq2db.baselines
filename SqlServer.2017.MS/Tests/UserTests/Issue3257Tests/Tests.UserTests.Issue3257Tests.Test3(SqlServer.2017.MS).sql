-- SqlServer.2017.MS SqlServer.2017

SELECT
	[x].[Id],
	ISNULL((
		SELECT
			STRING_AGG(CASE
				WHEN [a_ChecklistTriggers].[TriggerType] = 1 THEN N'Hired'
				WHEN [a_ChecklistTriggers].[TriggerType] = 2 THEN N'PreHired'
				WHEN [a_ChecklistTriggers].[TriggerType] = 3 THEN N'Terminated'
				ELSE N''
			END, N',')
		FROM
			[ChecklistTrigger] [a_ChecklistTriggers]
		WHERE
			[x].[Id] = [a_ChecklistTriggers].[ChecklistId]
	), N'None')
FROM
	[Checklist] [x]

