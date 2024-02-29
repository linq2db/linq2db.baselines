BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

UPDATE
	[Parent]
SET
	[c_1].[Value1] = @Value1
FROM
	[Parent] [c_1],
	[Parent] [x]
WHERE
	[x].[ParentID] IN (0, 0) AND [x].[ParentID] = [c_1].[Value1]

