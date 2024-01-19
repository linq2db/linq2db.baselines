BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p_1].[FirstName],
	[p_1].[ID],
	[p_1].[LastName],
	[p_1].[MiddleName],
	[p_1].[Gender]
FROM
	(
		SELECT
			Length([p].[FirstName]) as [Length_1],
			[p].[PersonID] as [ID],
			[p].[FirstName],
			[p].[LastName],
			[p].[MiddleName],
			[p].[Gender]
		FROM
			[Person] [p]
	) [p_1]
WHERE
	[p_1].[Length_1] = 4 AND [p_1].[ID] = 1

