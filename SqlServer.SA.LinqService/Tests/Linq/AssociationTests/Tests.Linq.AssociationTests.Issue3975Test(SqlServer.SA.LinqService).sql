﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT TOP (1)
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[t1].[ParentID]
FROM
	[Parent] [t1]

