﻿BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[c1],
	Count(*)
FROM
	(
		SELECT
			IIF([child].[FirstName] = N'John', [child].[FirstName], N'a') as [c1]
		FROM
			[Parent] [parent_1],
			[Person] [child]
		WHERE
			[child].[PersonID] = [parent_1].[ParentID]
	) [t1]
GROUP BY
	[t1].[c1]

