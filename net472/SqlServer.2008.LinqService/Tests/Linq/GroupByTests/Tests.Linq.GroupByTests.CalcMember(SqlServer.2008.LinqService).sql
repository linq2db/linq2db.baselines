﻿BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[c1],
	Count(*)
FROM
	(
		SELECT
			CASE
				WHEN [child].[FirstName] = N'John'
					THEN [child].[FirstName]
				ELSE N'a'
			END as [c1]
		FROM
			[Parent] [parent_1]
				CROSS JOIN [Person] [child]
		WHERE
			[child].[PersonID] = [parent_1].[ParentID]
	) [t1]
GROUP BY
	[t1].[c1]

