﻿BeforeExecute
-- SqlCe

SELECT
	Max([t3].[cnt])
FROM
	(
		SELECT
			[t2].[cnt]
		FROM
			[Parent] [p]
				LEFT JOIN (
					SELECT
						Count(*) as [cnt],
						[t1].[ParentID]
					FROM
						[Child] [t1]
					GROUP BY
						[t1].[ParentID]
				) [t2] ON [p].[ParentID] = [t2].[ParentID]
	) [t3]

