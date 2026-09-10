-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	[p2].[ParentID],
	[p2].[Value1]
FROM
	(
		SELECT TOP (@take)
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			[Parent] [t1]
	) [p1]
		RIGHT JOIN (
			SELECT TOP (10)
				[p].[ParentID],
				[p].[Value1]
			FROM
				[Parent] [p]
		) [p2] ON [p1].[ParentID] = [p2].[ParentID] AND ([p1].[Value1] = [p2].[Value1] OR [p1].[Value1] IS NULL AND [p2].[Value1] IS NULL)

