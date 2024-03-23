BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	(
		SELECT
			SUM([c_1].[ChildID])
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ChildID] <> [p].[ParentID] * 10 + 1
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 0

