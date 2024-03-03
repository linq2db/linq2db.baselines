﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[a_Parent].[ParentID]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON ([ch].[ParentID] = [a_Parent].[ParentID] OR [ch].[ParentID] IS NULL AND [a_Parent].[ParentID] IS NULL)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Child] [p]
		LEFT JOIN [Parent] [a_Parent] ON ([p].[ParentID] = [a_Parent].[ParentID] OR [p].[ParentID] IS NULL AND [a_Parent].[ParentID] IS NULL)
WHERE
	([a_Parent].[ParentID] = 1)

