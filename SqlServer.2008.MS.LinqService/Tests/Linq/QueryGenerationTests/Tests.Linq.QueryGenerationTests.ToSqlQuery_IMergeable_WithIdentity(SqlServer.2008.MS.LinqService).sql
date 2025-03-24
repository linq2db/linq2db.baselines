BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

MERGE INTO [TableWithIdentity] [Target]
USING (VALUES
	(1,2)
) [Source]
(
	[source_Id],
	[source_Value]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN MATCHED THEN
UPDATE
SET
	[Value] = [Source].[source_Value]

WHEN NOT MATCHED THEN
INSERT
(
	[Value]
)
VALUES
(
	[Source].[source_Value]
)
;

