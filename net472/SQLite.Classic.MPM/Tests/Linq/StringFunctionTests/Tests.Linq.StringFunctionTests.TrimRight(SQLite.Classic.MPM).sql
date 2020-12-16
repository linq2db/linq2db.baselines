BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[pp].[ID],
	[pp].[Name_1]
FROM
	(
		SELECT
			'  ' || [p].[FirstName] || ' ' as [Name],
			[p].[PersonID] as [ID],
			[p].[FirstName] as [Name_1]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	) [pp]
WHERE
	RTrim([pp].[Name]) = '  John'

