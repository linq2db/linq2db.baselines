BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], 0)
FROM
	[Parent] [p]
WHERE
	[p].[Value1] IS NOT NULL AND [p].[Value1] > 0

