﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[c1],
	Count(*)
FROM
	(
		SELECT
			CASE
				WHEN [child].[FirstName] = 'John'
					THEN [child].[FirstName]
				ELSE 'a'
			END as [c1]
		FROM
			[Parent] [parent_1],
			[Person] [child]
		WHERE
			[child].[PersonID] = [parent_1].[ParentID]
	) [t1]
GROUP BY
	[t1].[c1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

