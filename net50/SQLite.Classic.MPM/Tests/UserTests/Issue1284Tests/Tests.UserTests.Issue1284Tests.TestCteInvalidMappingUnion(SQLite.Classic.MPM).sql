BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

WITH [CTE_1]
(
	[entry],
	[rn],
	[FirstName],
	[ID],
	[LastName],
	[MiddleName]
)
AS
(
	SELECT
		[x].[Gender],
		[x].[c1],
		[x].[FirstName],
		[x].[PersonID],
		[x].[LastName],
		[x].[MiddleName]
	FROM
		(
			SELECT
				[person_1].[FirstName],
				[person_1].[PersonID],
				[person_1].[LastName],
				[person_1].[MiddleName],
				[person_1].[Gender],
				1 as [c1]
			FROM
				[Person] [person_1]
			UNION ALL
			SELECT
				[person_2].[FirstName],
				[person_2].[PersonID],
				[person_2].[LastName],
				[person_2].[MiddleName],
				[person_2].[Gender],
				2 as [c1]
			FROM
				[Person] [person_2]
		) [x]
	WHERE
		[x].[c1] = 1
)
SELECT
	[t1].[FirstName],
	[t1].[ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[entry],
	[t1].[rn]
FROM
	[CTE_1] [t1]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender],
	[x].[c1]
FROM
	(
		SELECT
			[person_1].[FirstName],
			[person_1].[PersonID],
			[person_1].[LastName],
			[person_1].[MiddleName],
			[person_1].[Gender],
			1 as [c1]
		FROM
			[Person] [person_1]
		UNION ALL
		SELECT
			[person_2].[FirstName],
			[person_2].[PersonID],
			[person_2].[LastName],
			[person_2].[MiddleName],
			[person_2].[Gender],
			2 as [c1]
		FROM
			[Person] [person_2]
	) [x]
WHERE
	[x].[c1] = 1
LIMIT @take

