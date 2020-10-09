BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 10
DECLARE @skip Int -- Int32
SET     @skip = 10
DECLARE @take_1 Int -- Int32
SET     @take_1 = 10

SELECT TOP (@take) 
	[cp].[ParentID], 
	[c_1].[ChildID]
FROM
	[Parent] [cp]
		CROSS APPLY ( 
			SELECT 
				[t3].[ParentID], 
				[t3].[ChildID]
			FROM
				( 
					SELECT 
						[t1].[ParentID], 
						[t1].[ChildID]
					FROM
						[Child] [t1]
					UNION
					SELECT 
						[t2].[ParentID], 
						[t2].[ChildID]
					FROM
						[Child] [t2]
				) [t3]
			ORDER BY
				[t3].[ParentID]
			OFFSET @skip ROWS FETCH NEXT @take_1 ROWS ONLY 
		) [c_1]
WHERE
	[c_1].[ParentID] = [cp].[ParentID]
ORDER BY
	[cp].[ParentID]

