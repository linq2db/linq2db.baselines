BeforeExecute
-- SqlServer.2008

SELECT 
	[ch].[ParentID], 
	[ch].[ChildID]
FROM
	[Child] [ch]
		INNER JOIN ( 
			SELECT 
				Max([t1].[ChildID]) as [c1]
			FROM
				[Child] [t1]
			GROUP BY
				[t1].[ParentID]
		) [max_1] ON [ch].[ChildID] = [max_1].[c1]

