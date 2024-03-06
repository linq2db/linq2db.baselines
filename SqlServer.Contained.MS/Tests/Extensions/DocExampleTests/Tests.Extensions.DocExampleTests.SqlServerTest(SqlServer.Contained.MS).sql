﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[t].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Child] [c_1] WITH (SPATIAL_WINDOW_MAX_CELLS=10, Index(IX_ChildIndex))
		INNER HASH JOIN [Parent] [t] WITH (NoLock) ON [c_1].[ParentID] = [t].[ParentID]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [a_Children_1]
		WHERE
			[t].[ParentID] = [a_Children_1].[ParentID]
	)
OPTION (RECOMPILE, FAST 10, HASH JOIN)

