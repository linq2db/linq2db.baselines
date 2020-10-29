BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @v1 Int -- Int32
SET     @v1 = 1
DECLARE @v1_1 Int -- Int32
SET     @v1_1 = 1

UPDATE
	[t1]
SET
	[t1].[Value1] = @v1
FROM
	[Parent] [t1]
WHERE
	[t1].[Value1] = @v1_1

