BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[t1].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY ( 
			SELECT TOP (@take) 
				[ch].[ChildID]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ParentID] = [p].[ParentID] AND [ch].[ChildID] = [ch].[ParentID] * 10 + 1
		) [t1]
WHERE
	[p].[ParentID] <> 5

