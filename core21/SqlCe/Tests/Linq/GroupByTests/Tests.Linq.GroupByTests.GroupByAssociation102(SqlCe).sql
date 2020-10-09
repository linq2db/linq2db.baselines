BeforeExecute
-- SqlCe

SELECT 
	[g_1].[Value1]
FROM
	( 
		SELECT 
			Count([t1].[ParentID]) as [ex], 
			[a_Parent].[Value1]
		FROM
			[GrandChild] [t2]
				INNER JOIN [Parent] [a_Parent] ON [t2].[ParentID] = [a_Parent].[ParentID]
				LEFT JOIN ( 
					SELECT 
						[a_Parent_1].[ParentID]
					FROM
						[GrandChild] [keyParam]
							INNER JOIN [Parent] [a_Parent_1] ON [keyParam].[ParentID] = [a_Parent_1].[ParentID]
					WHERE
						[keyParam].[ChildID] >= 20
					GROUP BY
						[a_Parent_1].[ParentID]
				) [t1] ON [a_Parent].[ParentID] = [t1].[ParentID]
		GROUP BY
			[a_Parent].[ParentID],
			[a_Parent].[Value1]
	) [g_1]
WHERE
	[g_1].[ex] > 2

