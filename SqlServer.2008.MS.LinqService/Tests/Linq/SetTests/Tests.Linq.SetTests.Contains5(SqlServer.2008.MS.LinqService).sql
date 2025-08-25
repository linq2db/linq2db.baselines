BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] + 1 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	)

