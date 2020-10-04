BeforeExecute
-- SqlServer.2016 SqlServer.2012

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
-- SqlServer.2016 SqlServer.2012

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] = 10

