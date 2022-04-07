BeforeExecute
-- SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 1 AS [item]
				UNION ALL
				SELECT 2 AS [item]
				UNION ALL
				SELECT 3 AS [item]) [v]
		WHERE
			[v].[item] = [p].[PersonID]
	)

