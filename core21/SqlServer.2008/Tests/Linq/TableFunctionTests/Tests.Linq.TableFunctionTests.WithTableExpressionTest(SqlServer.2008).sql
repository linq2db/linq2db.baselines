﻿BeforeExecute
-- SqlServer.2008

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[dbo].[Parent] [p] with (UpdLock)

