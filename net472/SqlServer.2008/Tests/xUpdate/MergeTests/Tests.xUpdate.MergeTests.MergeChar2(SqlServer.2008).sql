BeforeExecute
-- SqlServer.2008

MERGE INTO [AllTypes] [Target]
USING (	VALUES
		(10, char(0), char(0), NULL)) [Source]
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
	[Target].[charDataType] = [Source].[charDataType],
	[Target].[ncharDataType] = [Source].[ncharDataType],
	[Target].[nvarcharDataType] = [Source].[nvarcharDataType]

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
;

