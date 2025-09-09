BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[groupedData_1].[Key_1],
	COUNT(*) as [COUNT_1]
FROM
	(
		SELECT
			CASE
				WHEN [child].[FirstName] = 'John' THEN [child].[FirstName]
				ELSE 'a'
			END as [Key_1]
		FROM
			[Parent] [groupedData],
			[Person] [child]
		WHERE
			[child].[PersonID] = [groupedData].[ParentID]
	) [groupedData_1]
GROUP BY
	[groupedData_1].[Key_1]

