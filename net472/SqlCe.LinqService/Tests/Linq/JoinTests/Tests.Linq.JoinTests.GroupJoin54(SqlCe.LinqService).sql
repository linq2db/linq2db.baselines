BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[t3].[p1], 
	[t1].[ParentID], 
	[t1].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY ( 
			SELECT TOP (@take) 
				[ch].[ParentID], 
				[ch].[ChildID]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ParentID] = [p].[ParentID]
		) [t1]
		LEFT JOIN ( 
			SELECT 
				Count(*) as [p1], 
				[t2].[ParentID]
			FROM
				[Child] [t2]
			GROUP BY
				[t2].[ParentID]
		) [t3] ON [p].[ParentID] = [t3].[ParentID]
WHERE
	[p].[ParentID] = 1

