BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[One] IS DISTINCT FROM [r].[One]

