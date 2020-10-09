BeforeExecute
-- SqlServer.2005
DECLARE @p1 Int -- Int32
SET     @p1 = 100

SELECT 
	Coalesce([p].[Value1], @p1)
FROM
	[Parent] [p]

