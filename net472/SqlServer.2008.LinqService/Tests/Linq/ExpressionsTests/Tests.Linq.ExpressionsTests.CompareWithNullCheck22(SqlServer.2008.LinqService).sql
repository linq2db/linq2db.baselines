BeforeExecute
-- SqlServer.2008

SELECT
	CASE WHEN EXISTS(
		SELECT
			*
		FROM
			[AllTypes] [p]
		WHERE
			[p].[ID] = 1 AND (COALESCE(CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'-1' AS INT) END, CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'-1' AS INT) END) IS NULL AND [p].[intDataType] IS NULL OR COALESCE(CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'-1' AS INT) END, CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'-1' AS INT) END) = [p].[intDataType])
	) THEN 1 ELSE 0 END

