BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 5

SELECT TOP (@take)
	Convert(Date, CURRENT_TIMESTAMP),
	Count(*)
FROM
	[Parent] [v]
		INNER JOIN [Child] [s] ON [v].[ParentID] = [s].[ParentID]
WHERE
	[v].[Value1] > 0

