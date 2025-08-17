BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	(
		SELECT
			MAX([ch].[ChildID])
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] = [p].[ParentID] AND [ch].[ChildID] > 1
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

