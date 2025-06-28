﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

MERGE INTO [PKOnlyTable] [Target]
USING (VALUES
	(1), (2), (3)
) [Source]
(
	[ID]
)
ON ([Target].[ID] = [Source].[ID])

WHEN NOT MATCHED THEN
INSERT
(
	[ID]
)
VALUES
(
	[Source].[ID]
)
;

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ID]
FROM
	[PKOnlyTable] [t1]
ORDER BY
	[t1].[ID]

