BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[t1].[ParentID]
FROM
	[Parent] [p]
		OUTER APPLY ( 
			SELECT DISTINCT TOP (@take) 
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID]
		) [t1]

