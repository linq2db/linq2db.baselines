-- SqlServer.2016.MS SqlServer.2016

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

