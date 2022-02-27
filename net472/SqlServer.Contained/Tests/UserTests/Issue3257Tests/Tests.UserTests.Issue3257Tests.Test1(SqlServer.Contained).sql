﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [Checklist]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [ChecklistTrigger]
(
	[Id]          Int NOT NULL,
	[ChecklistId] Int NOT NULL,
	[TriggerType] Int NOT NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[x].[Id],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[ChecklistTrigger] [t1]
		WHERE
			[x].[Id] = [t1].[ChecklistId]
	), 1, 0),
	(
		SELECT
			STRING_AGG(CASE
				WHEN [checklist_1].[TriggerType] = 1
					THEN N'Hired'
				WHEN [checklist_1].[TriggerType] = 2
					THEN N'PreHired'
				WHEN [checklist_1].[TriggerType] = 3
					THEN N'Terminated'
				ELSE N''
			END, N',')
		FROM
			[ChecklistTrigger] [checklist_1]
		WHERE
			[x].[Id] = [checklist_1].[ChecklistId]
	)
FROM
	[Checklist] [x]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [ChecklistTrigger]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Checklist]

