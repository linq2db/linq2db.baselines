BeforeExecute
-- SqlCe

SELECT
	[groupedData_1].[c1],
	COUNT(*) as [COUNT_1]
FROM
	(
		SELECT
			CASE
				WHEN [child].[FirstName] = 'John' THEN [child].[FirstName]
				ELSE 'a'
			END as [c1]
		FROM
			[Parent] [groupedData],
			[Person] [child]
		WHERE
			[child].[PersonID] = [groupedData].[ParentID]
	) [groupedData_1]
GROUP BY
	[groupedData_1].[c1]

