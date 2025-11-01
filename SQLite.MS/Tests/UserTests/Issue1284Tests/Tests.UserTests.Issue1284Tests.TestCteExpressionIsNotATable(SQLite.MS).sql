-- SQLite.MS SQLite

WITH [CTE_1]
(
	[entry_ID],
	[entry_FirstName],
	[entry_LastName],
	[entry_MiddleName],
	[entry_Gender]
)
AS
(
	SELECT
		[person_1].[PersonID],
		[person_1].[FirstName],
		[person_1].[LastName],
		[person_1].[MiddleName],
		[person_1].[Gender]
	FROM
		[Person] [person_1]
)
SELECT
	[x].[entry_FirstName],
	[x].[entry_ID],
	[x].[entry_LastName],
	[x].[entry_MiddleName],
	[x].[entry_Gender]
FROM
	[CTE_1] [x]
WHERE
	[x].[entry_ID] = 1

-- SQLite.MS SQLite

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[PersonID] = 1

