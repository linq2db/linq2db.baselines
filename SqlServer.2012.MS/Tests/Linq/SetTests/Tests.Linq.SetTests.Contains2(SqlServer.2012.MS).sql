-- SqlServer.2012.MS SqlServer.2012

SELECT
	IIF([p].[ParentID] IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)
FROM
	[Parent] [p]

