﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[dbo].[Parent] [p] with (UpdLock)

