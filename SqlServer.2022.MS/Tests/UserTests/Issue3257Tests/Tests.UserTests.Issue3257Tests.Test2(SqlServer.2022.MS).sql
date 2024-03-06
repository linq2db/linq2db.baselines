﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Checklist]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Checklist]', N'U') IS NULL)
	CREATE TABLE [Checklist]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [ChecklistTrigger]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[ChecklistTrigger]', N'U') IS NULL)
	CREATE TABLE [ChecklistTrigger]
	(
		[Id]          Int NOT NULL,
		[ChecklistId] Int NOT NULL,
		[TriggerType] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[x].[Id],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[ChecklistTrigger] [a_ChecklistTriggers]
		WHERE
			[x].[Id] = [a_ChecklistTriggers].[ChecklistId]
	), 1, 0),
	(
		SELECT
			STRING_AGG(CASE
				WHEN [a_ChecklistTriggers_1].[TriggerType] = 1
					THEN N'Hired'
				WHEN [a_ChecklistTriggers_1].[TriggerType] = 2
					THEN N'PreHired'
				WHEN [a_ChecklistTriggers_1].[TriggerType] = 3
					THEN N'Terminated'
				ELSE N''
			END, N',')
		FROM
			[ChecklistTrigger] [a_ChecklistTriggers_1]
		WHERE
			[x].[Id] = [a_ChecklistTriggers_1].[ChecklistId]
	)
FROM
	[Checklist] [x]
WHERE
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
				WHEN [a_ChecklistTriggers_1].[TriggerType] = 1
					THEN N'Hired'
				WHEN [a_ChecklistTriggers_1].[TriggerType] = 2
					THEN N'PreHired'
				WHEN [a_ChecklistTriggers_1].[TriggerType] = 3
					THEN N'Terminated'
				ELSE N''
			END, N',')
		FROM
			[ChecklistTrigger] [a_ChecklistTriggers_1]
		WHERE
			[x].[Id] = [a_ChecklistTriggers_1].[ChecklistId]
	), N'None') LIKE N'%H%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [ChecklistTrigger]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Checklist]

