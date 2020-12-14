BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 5

SELECT TOP (@take)
	Cast(Floor(Cast(GetDate() as Float)) as DateTime),
	Count(*)
FROM
	[Parent] [v]
		INNER JOIN [Child] [s] ON [v].[ParentID] = [s].[ParentID]
WHERE
	[v].[Value1] > 0

