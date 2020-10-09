BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 5

SELECT TOP (@take) 
	[t1].[c1], 
	Count(*)
FROM
	( 
		SELECT 
			Convert(Date, CURRENT_TIMESTAMP) as [c1]
		FROM
			[Parent] [v]
				INNER JOIN [Child] [s] ON [v].[ParentID] = [s].[ParentID]
		WHERE
			[v].[Value1] > 0
	) [t1]
GROUP BY
	[t1].[c1]

