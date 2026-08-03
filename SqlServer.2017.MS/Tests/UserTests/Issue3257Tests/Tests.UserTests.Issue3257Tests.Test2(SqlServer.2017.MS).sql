-- SqlServer.2017.MS SqlServer.2017
SELECT
	[x_1].[Id],
	IIF([x_1].[c1] = 1, [x_1].[Triggers_1], N'None')
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
			), 1, 0) as [c1],
			(
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
			) as [Triggers_1],
			[x].[Id]
		FROM
			[Checklist] [x]
	) [x_1]
WHERE
	IIF([x_1].[c1] = 1, [x_1].[Triggers_1], N'None') LIKE N'%H%' ESCAPE N'~'

