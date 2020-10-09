BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 5 
	[t1].[c1], 
	Count(*)
FROM
	( 
		SELECT 
			Convert(Date, GetDate()) as [c1]
		FROM
			[Parent] [v]
				INNER JOIN [Child] [s] ON [v].[ParentID] = [s].[ParentID]
		WHERE
			[v].[Value1] > 0
	) [t1]
GROUP BY
	[t1].[c1]

