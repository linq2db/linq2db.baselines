﻿BeforeExecute
-- SqlServer.2016
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	IIF([p].[Value1] IS NULL, [p].[ParentID] % 2, [p].[Value1]),
	@Value1
FROM
	[Parent] [p]

