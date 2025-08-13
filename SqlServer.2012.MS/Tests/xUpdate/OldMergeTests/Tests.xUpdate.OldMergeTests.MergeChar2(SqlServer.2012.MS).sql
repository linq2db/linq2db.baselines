BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

MERGE INTO [AllTypes] [Target]
USING (VALUES
	(10,char(0),char(0))
) [Source]
(
	[ID],
	[charDataType],
	[ncharDataType]
)
ON ([Target].[ID] = [Source].[ID])

WHEN MATCHED THEN
UPDATE
SET
	[charDataType] = [Source].[charDataType],
	[ncharDataType] = [Source].[ncharDataType]

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
DisposeTransaction
