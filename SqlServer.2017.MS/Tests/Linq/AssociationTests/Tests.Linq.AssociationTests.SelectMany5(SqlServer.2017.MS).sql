﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[cp].[ParentID]
FROM
	[Parent] [cp]
		INNER JOIN [Child] [c_1] ON [cp].[ParentID] = [c_1].[ParentID]

