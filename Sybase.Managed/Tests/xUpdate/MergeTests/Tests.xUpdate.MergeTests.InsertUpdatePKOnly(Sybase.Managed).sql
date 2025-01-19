BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [PKOnlyTable] [Target]
USING (
	SELECT 1 AS [source_ID]
	UNION ALL
	SELECT 2
	UNION ALL
	SELECT 3) [Source]
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

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID]
FROM
	[PKOnlyTable] [t1]
ORDER BY
	[t1].[ID]

