﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @param_1 Int -- Int32
SET     @param_1 = 1

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[Value1] = @param_1

