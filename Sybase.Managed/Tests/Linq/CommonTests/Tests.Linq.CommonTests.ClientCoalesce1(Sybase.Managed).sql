BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 100

SELECT
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	Coalesce([x].[Value1], @Value1) > 10

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[Value1]
FROM
	[Parent] [p]

