BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2012

MERGE INTO [AllTypes] [Target]
USING (VALUES
	(10,char(0),char(0))
) [Source]
(
	[source_ID],
	[source_charDataType],
	[source_ncharDataType]
)
ON ([Target].[ID] = [Source].[source_ID])

WHEN MATCHED THEN
UPDATE
SET
	[charDataType] = [Source].[source_charDataType],
	[ncharDataType] = [Source].[source_ncharDataType]

WHEN NOT MATCHED THEN
INSERT
(
	[charDataType],
	[ncharDataType]
)
VALUES
(
	[Source].[source_charDataType],
	[Source].[source_ncharDataType]
)
;

BeforeExecute
DisposeTransaction
