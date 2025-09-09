BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	IIF([p].[ParentID] - 1 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)
FROM
	[Parent] [p]

