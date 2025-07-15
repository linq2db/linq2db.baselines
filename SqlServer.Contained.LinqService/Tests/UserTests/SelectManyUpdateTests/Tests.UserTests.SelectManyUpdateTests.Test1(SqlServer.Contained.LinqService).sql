BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Value1 BigInt -- Int64
SET     @Value1 = NULL

UPDATE
	[a_Values]
SET
	[a_Values].[Value1] = @Value1
FROM
	[Parent] [x]
		INNER JOIN [Parent] [a_Values] ON [x].[ParentID] = [a_Values].[Value1]
WHERE
	[x].[ParentID] IN (0, 0)

