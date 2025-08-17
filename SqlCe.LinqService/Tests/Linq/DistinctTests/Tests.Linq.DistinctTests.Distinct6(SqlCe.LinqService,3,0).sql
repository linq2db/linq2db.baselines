BeforeExecute
-- SqlCe (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @Value1 Int -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] + @ParentID) as [ParentID],
	@Value1 as [Value1]
FROM
	[Parent] [p]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

