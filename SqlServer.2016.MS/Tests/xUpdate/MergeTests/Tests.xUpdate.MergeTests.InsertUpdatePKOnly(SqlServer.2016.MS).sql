-- SqlServer.2016.MS SqlServer.2016

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

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[PKOnlyTable] [t1]
ORDER BY
	[t1].[ID]

