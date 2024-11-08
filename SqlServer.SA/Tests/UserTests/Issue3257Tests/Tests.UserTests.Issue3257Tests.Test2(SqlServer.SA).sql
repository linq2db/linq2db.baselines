BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Checklist]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Checklist]', N'U') IS NULL)
	CREATE TABLE [Checklist]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [ChecklistTrigger]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[ChecklistTrigger]', N'U') IS NULL)
	CREATE TABLE [ChecklistTrigger]
	(
		[Id]          Int NOT NULL,
		[ChecklistId] Int NOT NULL,
		[TriggerType] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
						WHEN [checklist_1].[TriggerType] = 1 THEN N'Hired'
						WHEN [checklist_1].[TriggerType] = 2 THEN N'PreHired'
						WHEN [checklist_1].[TriggerType] = 3 THEN N'Terminated'
						ELSE N''
					END, N',')
				FROM
					[ChecklistTrigger] [checklist_1]
				WHERE
					[x].[Id] = [checklist_1].[ChecklistId]
			), N'None') as [Triggers_1],
			[x].[Id]
		FROM
			[Checklist] [x]
	) [x_1]
WHERE
	[x_1].[Triggers_1] LIKE N'%H%' ESCAPE N'~'

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [ChecklistTrigger]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Checklist]

