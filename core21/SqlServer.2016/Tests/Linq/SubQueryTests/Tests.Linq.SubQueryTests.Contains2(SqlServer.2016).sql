BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 3

SELECT 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] IN (
		SELECT 
			[t1].[ParentID]
		FROM
			( 
				SELECT TOP (@take) 
					[p1].[ParentID]
				FROM
					[Parent] [p1]
				WHERE
					([p1].[Value1] IS NULL AND [p].[Value1] IS NULL OR [p1].[Value1] = [p].[Value1])
			) [t1]
	)

