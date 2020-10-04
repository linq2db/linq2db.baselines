BeforeExecute
-- SqlCe

SELECT
	[t1].[c1],
	Count(*)
FROM
	(
		SELECT
			CASE
				WHEN [child].[FirstName] = 'John'
					THEN [child].[FirstName]
				ELSE 'a'
			END as [c1]
		FROM
			[Parent] [parent_1],
			[Person] [child]
		WHERE
			[child].[PersonID] = [parent_1].[ParentID]
	) [t1]
GROUP BY
	[t1].[c1]

