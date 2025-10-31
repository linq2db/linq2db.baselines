BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ChildID] > 1
	)
FROM
	[Parent] [p]

