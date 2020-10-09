BeforeExecute
-- SqlServer.2008
DECLARE @id1 Int -- Int32
SET     @id1 = 1

SELECT 
	[left_1].[ParentID], 
	[left_1].[Value1], 
	[t1].[ParentID], 
	[t1].[Value1]
FROM
	[Parent] [left_1]
		INNER JOIN [Parent] [left2] ON [left_1].[Value1] = [left2].[Value1] + 2
		FULL JOIN ( 
			SELECT 
				[p].[Value1], 
				[p].[ParentID]
			FROM
				[Parent] [p]
			WHERE
				[p].[ParentID] <> @id1
		) [t1] ON ([t1].[Value1] + 2 IS NOT NULL AND [t1].[Value1] + 2 = [left_1].[Value1])
ORDER BY
	[left_1].[ParentID]

