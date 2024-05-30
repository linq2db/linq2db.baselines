﻿BeforeExecute
-- SqlServer.2017

SELECT
	[m_1].[ParentID],
	[d_1].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN (
			SELECT
				[d].[ParentID]
			FROM
				[Child] [d]
			GROUP BY
				[d].[ParentID]
		) [d_1] ON [m_1].[ParentID] = [d_1].[ParentID]

BeforeExecute
-- SqlServer.2017

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

