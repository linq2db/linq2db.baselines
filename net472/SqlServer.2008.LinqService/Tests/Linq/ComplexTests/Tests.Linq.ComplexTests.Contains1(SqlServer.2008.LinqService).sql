BeforeExecute
-- SqlServer.2008

SELECT 
	[p].[ParentID], 
	[t2].[gc3], 
	[t2].[ChildID], 
	[t2].[GrandChildID], 
	[t2].[is_empty]
FROM
	[Child] [ch]
		INNER JOIN [Parent] [p] ON [ch].[ParentID] = [p].[ParentID]
		LEFT JOIN ( 
			SELECT 
				[gc1].[ParentID] as [gc3], 
				[gc1].[ChildID], 
				[gc1].[GrandChildID], 
				1 as [is_empty]
			FROM
				[GrandChild] [gc1]
					INNER JOIN ( 
						SELECT 
							Max([t1].[GrandChildID]) as [c1]
						FROM
							[GrandChild] [t1]
						GROUP BY
							[t1].[ChildID]
					) [max_1] ON ([gc1].[GrandChildID] IS NULL AND [max_1].[c1] IS NULL OR [gc1].[GrandChildID] = [max_1].[c1])
		) [t2] ON [p].[ParentID] = [t2].[gc3]
WHERE
	([t2].[gc3] IS NULL AND [t2].[ChildID] IS NULL AND [t2].[GrandChildID] IS NULL OR ([t2].[GrandChildID] IS NULL OR [t2].[GrandChildID] NOT IN (111, 222)))

