﻿BeforeExecute
-- SqlServer.2019

SELECT
	[m_1].[ParentID],
	[d_1].[ParentID],
	[d_1].[Children]
FROM
	(
		SELECT DISTINCT
			[c_1].[ParentID]
		FROM
			[Parent] [c_1]
	) [m_1]
		CROSS APPLY (
			SELECT
				[d].[ParentID],
				STRING_AGG(CAST([d].[ChildID] AS NVarChar(11)), N', ') as [Children]
			FROM
				[Child] [d]
			WHERE
				[m_1].[ParentID] = [d].[ParentID]
			GROUP BY
				[d].[ParentID]
		) [d_1]

BeforeExecute
-- SqlServer.2019

SELECT
	[c_1].[ParentID]
FROM
	[Parent] [c_1]

