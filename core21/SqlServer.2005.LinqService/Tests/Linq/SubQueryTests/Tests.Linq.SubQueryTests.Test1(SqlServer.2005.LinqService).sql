BeforeExecute
-- SqlServer.2005

SELECT 
	(
		SELECT 
			Max([ch].[ChildID])
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

