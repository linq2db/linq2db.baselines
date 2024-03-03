BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[r_1].[PersonID]
FROM
	[Person] [t1]
		LEFT JOIN (
			SELECT
				0 as [PersonID]
			FROM
				[Doctor] [r]
		) [r_1] ON [t1].[PersonID] = 0 AND [t1].[FirstName] IS NULL AND 1 = 0 AND [t1].[Gender] IS NULL

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[r_1].[PersonID]
FROM
	[Person] [t1]
		LEFT JOIN (
			SELECT
				0 as [PersonID]
			FROM
				[Doctor] [r]
		) [r_1] ON [t1].[PersonID] = 0 AND [t1].[FirstName] IS NULL AND 1 = 0 AND [t1].[Gender] IS NULL

