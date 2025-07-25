﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t_1].[ParentID],
	[t_1].[count_1]
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					[Child] [c_1]
				WHERE
					[t].[ParentID] = [c_1].[ParentID]
			) as [count_1],
			[t].[ParentID]
		FROM
			[Parent] [t]
	) [t_1]
WHERE
	[t_1].[count_1] > 0

