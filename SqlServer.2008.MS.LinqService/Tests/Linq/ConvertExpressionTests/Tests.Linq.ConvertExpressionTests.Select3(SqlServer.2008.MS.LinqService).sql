BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	(
		SELECT
			SUM([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[t].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 1 AND
			[a_Children].[ParentID] < 10
	)
FROM
	[Parent] [t]

