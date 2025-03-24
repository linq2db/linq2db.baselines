﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			(
				SELECT TOP (2)
					[p].[ParentID]
				FROM
					[Parent] [p]
				WHERE
					[p].[ParentID] = 1
			) [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT TOP (2)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

