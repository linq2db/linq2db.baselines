BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [PKOnlyTable] [Target]
USING (
	SELECT 1 AS [ID]
	UNION ALL
	SELECT 2
	UNION ALL
	SELECT 3) [Source]
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

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID]
FROM
	[PKOnlyTable] [t1]
ORDER BY
	[t1].[ID]

