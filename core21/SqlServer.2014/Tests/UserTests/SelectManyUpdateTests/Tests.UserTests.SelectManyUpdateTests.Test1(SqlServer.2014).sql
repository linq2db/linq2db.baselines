BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

UPDATE
	[c_1]
SET
	[c_1].[Value1] = @Value1
FROM
	[Parent] [x]
		INNER JOIN [Parent] [c_1] ON [x].[ParentID] = [c_1].[Value1]
WHERE
	[x].[ParentID] IN (0, 0)

