﻿BeforeExecute
-- SqlServer.2016
DECLARE @Value1 Int -- Int32
SET     @Value1 = 100

SELECT
	IIF([p].[Value1] IS NULL, @Value1, [p].[Value1])
FROM
	[Parent] [p]

