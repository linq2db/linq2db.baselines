BeforeExecute
-- Access AccessOleDb

SELECT 
	[key_data_result].[ParentID], 
	[_c].[ParentID], 
	[_c].[ChildID]
FROM
	( 
		SELECT DISTINCT 
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [key_data_result]
		INNER JOIN [Child] [_c] ON ([_c].[ParentID] = [key_data_result].[ParentID] AND [_c].[ChildID] > -100 AND [_c].[ParentID] > 0)
ORDER BY
	[_c].[ChildID]

BeforeExecute
-- Access AccessOleDb

SELECT 
	[key_data_result].[ParentID], 
	[_c].[ParentID], 
	[_c].[ChildID]
FROM
	( 
		SELECT DISTINCT 
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [key_data_result]
		INNER JOIN [Child] [_c] ON ([_c].[ParentID] = [key_data_result].[ParentID] AND [_c].[ChildID] > -100)
ORDER BY
	[_c].[ChildID]

BeforeExecute
-- Access AccessOleDb

SELECT 
	[p].[ParentID], 
	EXISTS(
		SELECT 
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID] AND [c_1].[ChildID] > -100
	), 
	[t1].[Count_1]
FROM
	[Parent] [p]
		LEFT JOIN ( 
			SELECT 
				Count(*) as [Count_1], 
				[c_2].[ParentID]
			FROM
				[Child] [c_2]
			WHERE
				[c_2].[ChildID] > -100
			GROUP BY
				[c_2].[ParentID]
		) [t1] ON ([t1].[ParentID] = [p].[ParentID])

