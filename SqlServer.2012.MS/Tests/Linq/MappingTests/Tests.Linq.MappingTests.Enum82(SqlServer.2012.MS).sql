﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @testValue Int -- Int32
SET     @testValue = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] = @testValue

