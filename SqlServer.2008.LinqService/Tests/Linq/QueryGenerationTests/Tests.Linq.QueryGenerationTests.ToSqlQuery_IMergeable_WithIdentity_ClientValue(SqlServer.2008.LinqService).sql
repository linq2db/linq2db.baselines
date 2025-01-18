BeforeExecute
-- SqlServer.2008

SET IDENTITY_INSERT [TableWithIdentity] ON
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
	[Id],
	[Value]
)
VALUES
(
	123,
	321
)
;
SET IDENTITY_INSERT [TableWithIdentity] OFF

