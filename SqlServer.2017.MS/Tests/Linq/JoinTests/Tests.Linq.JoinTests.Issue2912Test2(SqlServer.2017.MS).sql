﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[user_1].[ParentID]
FROM
	[Parent] [employee]
		LEFT JOIN [GrandChild] [names_1] ON [employee].[ParentID] = [names_1].[ParentID] AND [names_1].[ParentID] IS NOT NULL
		LEFT JOIN [Parent] [user_1] ON [employee].[ParentID] = [user_1].[ParentID]

