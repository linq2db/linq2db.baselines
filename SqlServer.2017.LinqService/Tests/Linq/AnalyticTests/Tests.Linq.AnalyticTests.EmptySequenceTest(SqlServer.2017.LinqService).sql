﻿BeforeExecute
-- SqlServer.2017

SELECT
	[m_1].[ParentID],
	[d_1].[Key_1],
	[d_1].[ToValue]
FROM
	(
		SELECT DISTINCT
			[c_1].[ParentID]
		FROM
			[Parent] [c_1]
	) [m_1]
		CROSS APPLY (
			SELECT
				[d].[ParentID] as [Key_1],
				STRING_AGG(CAST([d].[ChildID] AS NVarChar(Max)), N', ') as [ToValue]
			FROM
				[Child] [d]
			WHERE
				[m_1].[ParentID] = [d].[ParentID]
			GROUP BY
				[d].[ParentID]
		) [d_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[c_1].[ParentID]
FROM
	[Parent] [c_1]

