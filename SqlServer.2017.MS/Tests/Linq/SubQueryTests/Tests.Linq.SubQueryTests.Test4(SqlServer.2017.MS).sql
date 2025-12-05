-- SqlServer.2017.MS SqlServer.2017

SELECT
	(
		SELECT TOP (1)
			[ch].[ChildID]
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] = [p].[ParentID] AND [ch].[ChildID] = [ch].[ParentID] * 10 + 1
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

