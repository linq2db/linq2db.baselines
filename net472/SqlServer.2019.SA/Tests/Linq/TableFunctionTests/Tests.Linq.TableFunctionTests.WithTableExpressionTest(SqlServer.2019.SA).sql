﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[dbo].[Parent] [p] with (UpdLock)

