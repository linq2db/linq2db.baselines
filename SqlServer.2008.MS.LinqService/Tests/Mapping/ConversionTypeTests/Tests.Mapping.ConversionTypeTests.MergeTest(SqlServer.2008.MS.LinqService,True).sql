BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

MERGE INTO [TrimTestTable] [Target]
USING (VALUES
	(1,N'***OOO***'), (2,N'***SSS***')
) [Source]
(
	[source_ID],
	[source_Data]
)
ON ([Target].[ID] = [Source].[source_ID])

WHEN MATCHED THEN
UPDATE
SET
	[Data] = [Source].[source_Data]

WHEN NOT MATCHED THEN
INSERT
(
	[ID],
	[Data]
)
VALUES
(
	[Source].[source_ID],
	[Source].[source_Data]
)
;

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

MERGE INTO [TrimTestTable] [Target]
USING (VALUES
	(3,N'***III***')
) [Source]
(
	[source_ID],
	[source_Data]
)
ON ([Target].[ID] = [Source].[source_ID])

WHEN MATCHED THEN
UPDATE
SET
	[Data] = [Source].[source_Data]

WHEN NOT MATCHED THEN
INSERT
(
	[ID],
	[Data]
)
VALUES
(
	[Source].[source_ID],
	[Source].[source_Data]
)
;

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

