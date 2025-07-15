BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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

