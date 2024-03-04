﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	(
		SELECT
			Sum([t1].[ParentID])
		FROM
			(
				SELECT
					CASE
						WHEN [d].[ParentID] IS NOT NULL
							THEN [d].[ParentID]
						ELSE -100
					END as [ParentID]
				FROM
					(
						SELECT
							-100 as [ParentID]
					) [c_1]
						LEFT JOIN [Child] [d] ON [p].[ParentID] = [d].[ParentID]
			) [t1]
	)
FROM
	[Parent] [p]

