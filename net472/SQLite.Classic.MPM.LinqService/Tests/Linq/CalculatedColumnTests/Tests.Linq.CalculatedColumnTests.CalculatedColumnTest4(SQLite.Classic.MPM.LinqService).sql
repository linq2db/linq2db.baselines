﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[PersonID],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender],
	[t1].[AsSqlFullName],
	[t1].[cnt]
FROM
	[Doctor] [cp]
		INNER JOIN (
			SELECT
				[c_1].[PersonID],
				[c_1].[FirstName],
				[c_1].[LastName],
				[c_1].[MiddleName],
				[c_1].[Gender],
				[c_1].[LastName] || ', ' || [c_1].[FirstName] as [AsSqlFullName],
				(
					SELECT
						Count(*)
					FROM
						[Doctor] [d]
					WHERE
						[d].[PersonID] = [c_1].[PersonID]
				) as [cnt]
			FROM
				[Person] [c_1]
		) [t1] ON [cp].[PersonID] = [t1].[PersonID]

