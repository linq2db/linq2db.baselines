﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Count(*)
FROM
	(
		SELECT
			[t2].[ParentID],
			[t2].[ChildID]
		FROM
			(
				SELECT
					[t1].[ParentID],
					[t1].[ChildID],
					ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
				FROM
					[Child] [t1]
			) [t2]
		WHERE
			[t2].[RN] > 2 AND [t2].[RN] <= 7
	) [t3]

