﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[cp].[ParentID]
FROM
	[Parent] [cp]
		INNER JOIN [Child] [c_1] ON [cp].[ParentID] = [c_1].[ParentID]

