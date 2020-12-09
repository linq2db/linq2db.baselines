BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

UPDATE
	[Parent]
SET
	[c_1].[Value1] = @Value1
FROM
	[Parent] [x]
		INNER JOIN [Parent] [c_1] ON [x].[ParentID] = [c_1].[Value1]
WHERE
	[x].[ParentID] IN (0, 0)

