﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

DELETE [p]
FROM
	[Parent] [p]
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	) AND
	[p].[ParentID] > 100

