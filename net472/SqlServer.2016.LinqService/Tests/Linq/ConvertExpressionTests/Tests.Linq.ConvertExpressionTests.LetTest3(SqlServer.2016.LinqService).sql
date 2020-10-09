BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[t1].[ParentID]
FROM
	[Parent] [p_1]
		OUTER APPLY ( 
			SELECT TOP (@take) 
				[p].[ParentID]
			FROM
				[Child] [p]
		) [t1]

