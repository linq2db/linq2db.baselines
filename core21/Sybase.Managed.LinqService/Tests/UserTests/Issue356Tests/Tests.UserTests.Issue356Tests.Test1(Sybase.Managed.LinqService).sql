BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 10 
	[cp].[ParentID], 
	[c_1].[ChildID]
FROM
	[Parent] [cp]
		INNER JOIN ( 
			SELECT DISTINCT 
				[t3].[ParentID], 
				[t3].[ChildID]
			FROM
				( 
					SELECT 
						[t1].[ParentID], 
						[t1].[ChildID]
					FROM
						[Child] [t1]
					UNION
					SELECT 
						[t2].[ParentID], 
						[t2].[ChildID]
					FROM
						[Child] [t2]
				) [t3]
		) [c_1] ON 1=1
WHERE
	[c_1].[ParentID] = [cp].[ParentID]
ORDER BY
	[cp].[ParentID],
	[c_1].[ChildID]

