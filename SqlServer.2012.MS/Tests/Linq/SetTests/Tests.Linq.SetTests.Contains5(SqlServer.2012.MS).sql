BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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

