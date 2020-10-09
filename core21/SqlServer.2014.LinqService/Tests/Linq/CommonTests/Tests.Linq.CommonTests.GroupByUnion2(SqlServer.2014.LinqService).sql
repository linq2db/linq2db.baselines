BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[p].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN ( 
			SELECT 
				[tt].[ParentID] as [tt]
			FROM
				( 
					SELECT 
						Sum([t1].[ID]) as [Sum_1], 
						[t1].[ParentID]
					FROM
						( 
							SELECT 
								[c_1].[ParentID], 
								[c_1].[ChildID] as [ID]
							FROM
								[Child] [c_1]
							WHERE
								[c_1].[ParentID] < 4
							UNION ALL
							SELECT 
								IIF([g_1].[ParentID] IS NULL, 0, [g_1].[ParentID]) as [ParentID], 
								IIF([g_1].[GrandChildID] IS NULL, 0, [g_1].[GrandChildID]) as [ID]
							FROM
								[GrandChild] [g_1]
							WHERE
								[g_1].[ParentID] >= 4
						) [t1]
					GROUP BY
						[t1].[ParentID]
				) [tt]
			WHERE
				([tt].[Sum_1] IS NULL OR [tt].[Sum_1] <> 0)
		) [t2] ON [p].[ParentID] = [t2].[tt]

