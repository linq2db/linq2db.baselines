BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[t1].[Count_1]
FROM
	( 
		SELECT 
			[p3].[ID] + 1 as [ID], 
			[p3].[ParentID]
		FROM
			( 
				SELECT 
					[p2].[ParentID] + 1 as [ID], 
					[p2].[ParentID]
				FROM
					[Parent] [p2]
			) [p3]
		WHERE
			[p3].[ID] > 0
	) [p1]
		OUTER APPLY ( 
			SELECT TOP (@take) 
				[c_2].[c1] as [Count_1]
			FROM
				( 
					SELECT 
						[c_1].[ParentID] + 1 as [c1]
					FROM
						[Child] [c_1]
					WHERE
						[c_1].[ParentID] + 1 < [p1].[ID] AND [p1].[ParentID] = [c_1].[ParentID]
				) [c_2]
			WHERE
				[c_2].[c1] < [p1].[ID]
		) [t1]
WHERE
	[p1].[ID] > 0

