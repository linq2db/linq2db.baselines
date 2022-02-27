BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[AllTypes] [p]
		WHERE
			[p].[ID] = 2 AND (COALESCE(CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'1' AS INT) END, CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'1' AS INT) END) <> [p].[intDataType] OR COALESCE(CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'1' AS INT) END, CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'1' AS INT) END) IS NULL AND [p].[intDataType] IS NOT NULL OR COALESCE(CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'1' AS INT) END, CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'1' AS INT) END) IS NOT NULL AND [p].[intDataType] IS NULL)
	), 1, 0)

