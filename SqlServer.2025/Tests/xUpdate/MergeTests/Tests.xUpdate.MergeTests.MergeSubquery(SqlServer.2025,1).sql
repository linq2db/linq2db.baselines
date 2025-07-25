﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2025 SqlServer.2022

CREATE TABLE [tempdb]..[#MergeTemp]
(
	[ID]   Int          NOT NULL,
	[Name] NVarChar(20)     NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
INSERT BULK [tempdb]..[#MergeTemp](ID, Name)

BeforeExecute
-- SqlServer.2025 SqlServer.2022

MERGE INTO [tempdb]..[#MergeTemp] [t1]
USING (SELECT (
	SELECT
		[t].[ID]
	FROM
		[tempdb]..[#MergeTemp] [t]
	WHERE
		[t].[Name] = N'John'
) AS [ID]) [s] ON
(
	[t1].[ID] = [s].[ID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[ID] = [t1].[ID],
		[Name] = [t1].[Name]
WHEN NOT MATCHED THEN
	INSERT
	(
		[ID],
		[Name]
	)
	VALUES
	(
		(
			SELECT
				[t].[ID]
			FROM
				[tempdb]..[#MergeTemp] [t]
			WHERE
				[t].[Name] = N'John'
		),
		N'John II'
	);

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#MergeTemp]

