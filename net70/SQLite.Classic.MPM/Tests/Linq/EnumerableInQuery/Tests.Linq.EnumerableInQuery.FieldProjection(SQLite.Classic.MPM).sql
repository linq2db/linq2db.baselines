BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			[r].[PersonID]
		FROM
			(
				SELECT NULL [PersonID] WHERE 1 = 0
				UNION ALL
				VALUES
					(1), (2), (3), (4)
				) [r]
		WHERE
			[r].[PersonID] = [x].[PersonID]
		LIMIT @take
	)
FROM
	[Person] [x]

