BeforeExecute
-- Access AccessOleDb

SELECT 
	[t2].[Count_1]
FROM
	[Parent] [p]
		LEFT JOIN ( 
			SELECT 
				Count(*) as [Count_1], 
				[t1].[Value1]
			FROM
				[Parent] [t1]
			GROUP BY
				[t1].[Value1]
		) [t2] ON ([p].[ParentID] = [t2].[Value1])

