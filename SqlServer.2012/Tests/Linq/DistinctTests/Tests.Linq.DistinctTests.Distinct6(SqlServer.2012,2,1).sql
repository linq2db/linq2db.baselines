﻿BeforeExecute
--  SqlServer.2012
DECLARE @ParentID Int -- Int32
SET     @ParentID = 0
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] + @ParentID),
	@Value1
FROM
	[Parent] [p]

BeforeExecute
--  SqlServer.2012

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

