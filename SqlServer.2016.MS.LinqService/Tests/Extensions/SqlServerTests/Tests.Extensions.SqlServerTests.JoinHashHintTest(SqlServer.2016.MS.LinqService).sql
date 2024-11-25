﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[t].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Child] [c_1]
		INNER HASH JOIN [Parent] [t] ON [c_1].[ParentID] = [t].[ParentID]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[Child] [a_Children_1]
		WHERE
			[t].[ParentID] = [a_Children_1].[ParentID]
	)

