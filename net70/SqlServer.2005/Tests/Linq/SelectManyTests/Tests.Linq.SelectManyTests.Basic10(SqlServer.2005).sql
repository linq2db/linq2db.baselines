﻿BeforeExecute
-- SqlServer.2005

SELECT
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	(
		SELECT
			[t2].[c1],
			[t2].[Value1]
		FROM
			(
				SELECT
					[a_ParentID2].[ParentID] as [c1],
					[a_ParentID2].[Value1]
				FROM
					[Child] [t1]
						INNER JOIN [Parent] [a_ParentID2] ON [t1].[ParentID] = [a_ParentID2].[ParentID]
			) [t2]
		GROUP BY
			[t2].[c1],
			[t2].[Value1]
	) [cp]
		INNER JOIN [Child] [c_1]
			INNER JOIN [Parent] [a_ParentID2_1] ON [c_1].[ParentID] = [a_ParentID2_1].[ParentID]
		ON ([cp].[c1] = [a_ParentID2_1].[ParentID] OR [cp].[c1] IS NULL AND [a_ParentID2_1].[ParentID] IS NULL) AND ([cp].[Value1] = [a_ParentID2_1].[Value1] OR [cp].[Value1] IS NULL AND [a_ParentID2_1].[Value1] IS NULL)
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]

