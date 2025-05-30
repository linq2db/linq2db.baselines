﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

MERGE INTO [PKOnlyTable] [Target]
USING (VALUES
	(1), (2), (3)
) [Source]
(
	[source_ID]
)
ON ([Target].[ID] = [Source].[source_ID])

WHEN NOT MATCHED THEN
INSERT
(
	[ID]
)
VALUES
(
	[Source].[source_ID]
)
;

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[ID]
FROM
	[PKOnlyTable] [t1]
ORDER BY
	[t1].[ID]

