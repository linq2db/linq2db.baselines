﻿BeforeExecute
-- SqlCe

SELECT
	[groupedData_1].[Value_1],
	Count(*) as [Count_1]
FROM
	(
		SELECT
			CASE
				WHEN [child].[FirstName] = 'John'
					THEN [child].[FirstName]
				ELSE 'a'
			END as [Value_1]
		FROM
			[Parent] [groupedData],
			[Person] [child]
		WHERE
			[child].[PersonID] = [groupedData].[ParentID]
	) [groupedData_1]
GROUP BY
	[groupedData_1].[Value_1]

