﻿BeforeExecute
-- SqlServer.2022

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

