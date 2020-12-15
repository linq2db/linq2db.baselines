BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @v1 Int -- Int32
SET     @v1 = 1
DECLARE @v2 Int -- Int32
SET     @v2 = 1

UPDATE
	[t1]
SET
	[t1].[Value1] = @v1
FROM
	[Parent] [t1]
WHERE
	[t1].[Value1] = @v2

