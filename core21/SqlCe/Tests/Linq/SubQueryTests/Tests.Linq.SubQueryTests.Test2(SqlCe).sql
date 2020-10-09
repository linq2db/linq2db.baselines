BeforeExecute
-- SqlCe

SELECT 
	[t1].[Max_1]
FROM
	[Parent] [p]
		LEFT JOIN ( 
			SELECT 
				Max([ch].[ChildID]) as [Max_1], 
				[ch].[ParentID]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ChildID] > 1
			GROUP BY
				[ch].[ParentID]
		) [t1] ON [t1].[ParentID] = [p].[ParentID]
WHERE
	[p].[ParentID] <> 5

