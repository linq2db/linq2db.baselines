﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[r].[ParentID],
	[r].[Value1]
FROM
	[Parent] [r]
WHERE
	[r].[ParentID] = @p

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

