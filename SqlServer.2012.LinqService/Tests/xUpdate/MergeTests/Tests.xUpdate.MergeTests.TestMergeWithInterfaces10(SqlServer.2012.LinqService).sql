﻿BeforeExecute
-- SqlServer.2012

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[Id]
)
ON ([Target].[Id] = [Source].[Id])

WHEN MATCHED THEN
UPDATE
SET
	[Id] = 2,
	[Value] = N'3'
;

