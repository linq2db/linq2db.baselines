﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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

