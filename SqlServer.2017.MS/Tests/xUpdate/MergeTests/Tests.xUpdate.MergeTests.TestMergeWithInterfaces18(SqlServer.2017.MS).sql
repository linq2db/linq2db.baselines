﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[Id]
)
ON ([Target].[Id] = [Source].[Id])

WHEN NOT MATCHED By Source THEN UPDATE
SET
	[Id] = 2,
	[Value] = N'3'
;

