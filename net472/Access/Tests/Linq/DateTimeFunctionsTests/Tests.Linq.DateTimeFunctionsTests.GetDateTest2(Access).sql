BeforeExecute
-- Access AccessOleDb

SELECT TOP 5 
	[t1].[c1], 
	Count(*)
FROM
	( 
		SELECT 
			DateValue(Now) as [c1]
		FROM
			[Parent] [v]
				INNER JOIN [Child] [s] ON ([v].[ParentID] = [s].[ParentID])
		WHERE
			[v].[Value1] > 0
	) [t1]
GROUP BY
	[t1].[c1]

