﻿BeforeExecute
-- SqlServer.2012

SELECT
	[a_Parent].[ParentID]
FROM
	[Child] [t1]
		LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]

