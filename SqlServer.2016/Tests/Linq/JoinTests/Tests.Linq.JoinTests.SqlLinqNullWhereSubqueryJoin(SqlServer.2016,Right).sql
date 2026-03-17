-- SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 10
DECLARE @take_1 Int -- Int32
SET     @take_1 = 10

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT TOP (@take)
			[p1].[ParentID],
			[p1].[Value1]
		FROM
			[Parent] [p1]
	) [p1_1]
		RIGHT JOIN (
			SELECT TOP (@take_1)
				[p2].[ParentID],
				[p2].[Value1]
			FROM
				[Parent] [p2]
		) [t1] ON [p1_1].[ParentID] = [t1].[ParentID] AND ([p1_1].[Value1] = [t1].[Value1] OR [p1_1].[Value1] IS NULL AND [t1].[Value1] IS NULL)

