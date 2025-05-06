BeforeExecute
-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[One] IS DISTINCT FROM [r].[One]

