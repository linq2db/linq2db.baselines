﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2),
	@Value1
FROM
	[Parent] [p]

