BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 100

SELECT
	Coalesce([p].[Value1], @Value1)
FROM
	[Parent] [p]

