﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID]),
	@Value1
FROM
	[Parent] [p]

