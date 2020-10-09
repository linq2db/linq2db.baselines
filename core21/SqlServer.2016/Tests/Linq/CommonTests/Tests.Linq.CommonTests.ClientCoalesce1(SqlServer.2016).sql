BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @p1 Int -- Int32
SET     @p1 = 100

SELECT 
	IIF([p].[Value1] IS NULL, @p1, [p].[Value1])
FROM
	[Parent] [p]

