BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	IIF([p].[ParentID] IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)
FROM
	[Parent] [p]

