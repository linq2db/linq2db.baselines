BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 10
DECLARE @take_1 Int -- Int32
SET     @take_1 = 10

SELECT 
	[p_1].[ParentID], 
	[c_1].[ChildID]
FROM
	( 
		SELECT TOP (@take) 
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] > 0
	) [p_1],
	( 
		SELECT TOP (@take_1) 
			[t1].[ChildID]
		FROM
			[Child] [t1]
	) [c_1]

