BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @id1 Int -- Int32
SET     @id1 = 1
DECLARE @id1_1 Int -- Int32
SET     @id1_1 = 1
DECLARE @id2 Int -- Int32
SET     @id2 = 10000

SELECT TOP (@take)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	(([p].[ParentID] = @id1 OR [p].[ParentID] >= @id1_1) OR [p].[ParentID] >= @id2)
ORDER BY
	[p].[ParentID]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @id1 Int -- Int32
SET     @id1 = 2
DECLARE @id1_1 Int -- Int32
SET     @id1_1 = 2
DECLARE @id2 Int -- Int32
SET     @id2 = 10000

SELECT TOP (@take)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	(([p].[ParentID] = @id1 OR [p].[ParentID] >= @id1_1) OR [p].[ParentID] >= @id2)
ORDER BY
	[p].[ParentID]

