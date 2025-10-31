-- SqlServer.2012.MS SqlServer.2012

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ChildID] > 0
	)
FROM
	[Parent] [p]

