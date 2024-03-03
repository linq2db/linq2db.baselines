﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[person_1].[PersonID],
	[y_1].[PersonID]
FROM
	(
		SELECT
			[y].[PersonID]
		FROM
			[Patient] [y]
		WHERE
			[y].[Diagnosis] = 'a'
		UNION ALL
		SELECT
			[pat].[PersonID]
		FROM
			[Patient] [pat]
		WHERE
			[pat].[Diagnosis] = 'b'
	) [y_1]
		INNER JOIN [Person] [person_1] ON [y_1].[PersonID] = [person_1].[PersonID]
ORDER BY
	[person_1].[PersonID]

