BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], 100)
FROM
	[Parent] [p]

