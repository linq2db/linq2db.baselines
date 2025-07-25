﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT /* qb_1 */
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [p] WITH (NoLock) ON [c_1].[ParentID] = [p].[ParentID]
UNION
SELECT /* qb_2 */
	[p_1].[ParentID],
	[p_1].[Value1]
FROM
	[Child] [c_2]
		INNER JOIN [Parent] [p_1] WITH (NoLock) ON [c_2].[ParentID] = [p_1].[ParentID]

