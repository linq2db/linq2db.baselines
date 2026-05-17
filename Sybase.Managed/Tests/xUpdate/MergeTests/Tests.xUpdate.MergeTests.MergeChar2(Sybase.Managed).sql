-- Sybase.Managed Sybase

MERGE INTO [AllTypes] [Target]
USING (
	SELECT 10 AS [ID], char(0) AS [charDataType], char(0) AS [ncharDataType], CAST(NULL AS NVarChar(20)) AS [nvarcharDataType]) [Source]
(
	[ID],
	[charDataType],
	[ncharDataType],
	[nvarcharDataType]
)
ON ([Target].[ID] = [Source].[ID])

WHEN MATCHED THEN
UPDATE
SET
	[charDataType] = [Source].[charDataType],
	[ncharDataType] = [Source].[ncharDataType],
	[nvarcharDataType] = [Source].[nvarcharDataType]

WHEN NOT MATCHED THEN
INSERT
(
	[charDataType],
	[ncharDataType],
	[nvarcharDataType]
)
VALUES
(
	[Source].[charDataType],
	[Source].[ncharDataType],
	[Source].[nvarcharDataType]
)

