﻿BeforeExecute
-- SqlServer.2019
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID]),
	@Value1
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

