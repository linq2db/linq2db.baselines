﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[dbo].[Parent] [p] with (UpdLock)

