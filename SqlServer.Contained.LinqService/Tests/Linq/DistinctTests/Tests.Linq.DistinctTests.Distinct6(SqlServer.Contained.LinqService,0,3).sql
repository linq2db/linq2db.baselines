﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @Value1 Int -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] + @ParentID),
	@Value1
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

