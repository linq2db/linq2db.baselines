﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[Id]
)
ON ([Target].[Id] = [Source].[Id])
WHEN NOT MATCHED BY SOURCE THEN DELETE
;

