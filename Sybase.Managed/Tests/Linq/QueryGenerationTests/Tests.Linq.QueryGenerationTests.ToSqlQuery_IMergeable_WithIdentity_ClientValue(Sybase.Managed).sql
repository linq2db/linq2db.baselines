BeforeExecute
--  Sybase.Managed Sybase

SET IDENTITY_INSERT [TableWithIdentity] ON
MERGE INTO [TableWithIdentity] [Target]
USING (
	SELECT 1 AS [source_Id], 2 AS [source_Value]) [Source]
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
SET IDENTITY_INSERT [TableWithIdentity] OFF

