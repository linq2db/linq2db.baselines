BeforeExecute
-- SqlServer.2017

MERGE INTO [AllTypes] [Target]
USING (	VALUES
		(10,char(0),char(0))) [Source]
(
	[ID], 
	[charDataType], 
	[ncharDataType]
)
ON ([Target].[ID] = [Source].[ID])

WHEN MATCHED THEN
UPDATE
SET
	[Target].[charDataType] = [Source].[charDataType],
	[Target].[ncharDataType] = [Source].[ncharDataType]

WHEN NOT MATCHED THEN
INSERT
(
	[charDataType],
	[ncharDataType]
)
VALUES
(
	[Source].[charDataType],
	[Source].[ncharDataType]
)
;

BeforeExecute
-- SqlServer.2017

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] = 10

