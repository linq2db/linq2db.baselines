BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[key_data_result].[ParentID], 
	[_c].[ParentID], 
	[_c].[ChildID]
FROM
	( 
		SELECT DISTINCT 
			[t1].[ParentID]
		FROM
			( 
				SELECT TOP 5000 
					[t].[ParentID]
				FROM
					[Parent] [t]
				WHERE
					[t].[ParentID] > 0
			) [t1]
	) [key_data_result]
		INNER JOIN [Child] [_c] ON ([_c].[ParentID] = [key_data_result].[ParentID] AND [_c].[ChildID] > -100)
ORDER BY
	[_c].[ChildID]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 5000 
	[t].[ParentID], 
	EXISTS(
		SELECT 
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [t].[ParentID] AND [c_1].[ChildID] > -100
	), 
	[t1].[Count_1], 
	(
		SELECT TOP 1 
			[c_2].[ParentID]
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ParentID] = [t].[ParentID] AND [c_2].[ChildID] > -100 AND
			[c_2].[ParentID] > 0
		ORDER BY
			[c_2].[ChildID]
	)
FROM
	[Parent] [t]
		LEFT JOIN ( 
			SELECT 
				Count(*) as [Count_1], 
				[c_3].[ParentID]
			FROM
				[Child] [c_3]
			WHERE
				[c_3].[ChildID] > -100
			GROUP BY
				[c_3].[ParentID]
		) [t1] ON ([t1].[ParentID] = [t].[ParentID])
WHERE
	[t].[ParentID] > 0

