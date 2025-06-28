BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

MERGE INTO [TrimTestTable] [Target]
USING (VALUES
	(1,N'***OOO***'), (2,N'***SSS***')
) [Source]
(
	[ID],
	[Data_1]
)
ON ([Target].[ID] = [Source].[ID])

WHEN MATCHED THEN
UPDATE
SET
	[Data] = [Source].[Data_1]

WHEN NOT MATCHED THEN
INSERT
(
	[ID],
	[Data]
)
VALUES
(
	[Source].[ID],
	[Source].[Data_1]
)
;

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

MERGE INTO [TrimTestTable] [Target]
USING (VALUES
	(3,N'***III***')
) [Source]
(
	[ID],
	[Data_1]
)
ON ([Target].[ID] = [Source].[ID])

WHEN MATCHED THEN
UPDATE
SET
	[Data] = [Source].[Data_1]

WHEN NOT MATCHED THEN
INSERT
(
	[ID],
	[Data]
)
VALUES
(
	[Source].[ID],
	[Source].[Data_1]
)
;

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

