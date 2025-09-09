BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

MERGE INTO [TrimTestTable] [Target]
USING (
	SELECT 1 AS [ID], '***OOO***' AS [Data_1]
	UNION ALL
	SELECT 2, '***SSS***') [Source]
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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

MERGE INTO [TrimTestTable] [Target]
USING (
	SELECT 3 AS [ID], '***III***' AS [Data_1]) [Source]
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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

