﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [p]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	)

