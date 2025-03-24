BeforeExecute
BeginTransaction
BeforeExecute
--  SqlServer.2014.MS SqlServer.2014

MERGE INTO [AllTypes] [Target]
USING (VALUES
	(10,char(0),char(0),NULL)
) [Source]
(
	[source_ID],
	[source_charDataType],
	[source_ncharDataType],
	[source_nvarcharDataType]
)
ON ([Target].[ID] = [Source].[source_ID])

WHEN MATCHED THEN
UPDATE
SET
	[charDataType] = [Source].[source_charDataType],
	[ncharDataType] = [Source].[source_ncharDataType],
	[nvarcharDataType] = [Source].[source_nvarcharDataType]

WHEN NOT MATCHED THEN
INSERT
(
	[charDataType],
	[ncharDataType],
	[nvarcharDataType]
)
VALUES
(
	[Source].[source_charDataType],
	[Source].[source_ncharDataType],
	[Source].[source_nvarcharDataType]
)
;

BeforeExecute
DisposeTransaction
