BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p_2].[FirstName],
	[p_2].[PersonID],
	[p_2].[LastName],
	[p_2].[MiddleName],
	[p_2].[Gender]
FROM
	(
		SELECT
			[p_1].[ID] + 1 as [ID],
			[p_1].[FirstName],
			[p_1].[PersonID],
			[p_1].[LastName],
			[p_1].[MiddleName],
			[p_1].[Gender]
		FROM
			(
				SELECT
					[p].[PersonID] + 1 as [ID],
					[p].[FirstName],
					[p].[PersonID],
					[p].[LastName],
					[p].[MiddleName],
					[p].[Gender]
				FROM
					[Person] [p]
				WHERE
					[p].[PersonID] = 1
			) [p_1]
		WHERE
			[p_1].[ID] = 2
	) [p_2]
WHERE
	[p_2].[ID] = 3

