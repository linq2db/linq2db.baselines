﻿BeforeExecute
--  SqlServer.2005

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (TabLockX)

