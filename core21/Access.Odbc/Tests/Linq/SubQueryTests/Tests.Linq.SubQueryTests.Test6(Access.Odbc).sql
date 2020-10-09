BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id_1 Int -- Int32
SET     @id_1 = 2

SELECT 
	[c_1].[ChildID], 
	[c_1].[ParentID], 
	(
		SELECT 
			Sum([g_1].[ChildID] * [g_1].[GrandChildID])
		FROM
			[GrandChild] [g_1]
		WHERE
			[g_1].[ChildID] = [c_1].[ChildID] AND [g_1].[GrandChildID] > 0
	), 
	[t1].[Count1]
FROM
	[Child] [c_1]
		LEFT JOIN ( 
			SELECT 
				Count(*) as [Count1], 
				[g_2].[ChildID]
			FROM
				[GrandChild] [g_2]
			WHERE
				[g_2].[GrandChildID] > 0
			GROUP BY
				[g_2].[ChildID]
		) [t1] ON ([t1].[ChildID] = [c_1].[ChildID])
WHERE
	[c_1].[ParentID] = ?
ORDER BY
	[c_1].[ParentID] DESC

