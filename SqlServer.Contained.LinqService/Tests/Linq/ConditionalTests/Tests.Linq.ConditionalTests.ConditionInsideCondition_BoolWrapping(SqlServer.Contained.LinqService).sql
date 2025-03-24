﻿BeforeExecute
--  SqlServer.Contained SqlServer.2019

SELECT
	CASE
		WHEN [p].[ParentID] % 2 = 0 THEN IIF([p].[ParentID] % 3 = 0, 1, 0)
		WHEN [p].[ParentID] % 4 = 0 THEN IIF([p].[ParentID] > 0, 1, 0)
		ELSE IIF([p].[ParentID] < 5, 1, 0)
	END
FROM
	[Parent] [p]

BeforeExecute
--  SqlServer.Contained SqlServer.2019

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
--  SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

