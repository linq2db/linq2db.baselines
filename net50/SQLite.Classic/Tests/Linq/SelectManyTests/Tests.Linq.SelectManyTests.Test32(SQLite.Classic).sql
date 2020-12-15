BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p_1].[FirstName],
	[p_1].[PersonID],
	[p_1].[LastName],
	[p_1].[MiddleName],
	[p_1].[Gender]
FROM
	(
		SELECT
			[p].[PersonID] + 2 as [ID],
			[p].[FirstName],
			[p].[PersonID],
			[p].[LastName],
			[p].[MiddleName],
			[p].[Gender]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1 AND [p].[PersonID] = 1
	) [p_1]
WHERE
	[p_1].[ID] = 3

