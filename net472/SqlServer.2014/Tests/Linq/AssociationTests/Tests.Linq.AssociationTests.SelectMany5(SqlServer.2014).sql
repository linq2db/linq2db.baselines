﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[cp].[ParentID]
FROM
	[Parent] [cp]
		INNER JOIN [Child] [c_1] ON [cp].[ParentID] = [c_1].[ParentID]

