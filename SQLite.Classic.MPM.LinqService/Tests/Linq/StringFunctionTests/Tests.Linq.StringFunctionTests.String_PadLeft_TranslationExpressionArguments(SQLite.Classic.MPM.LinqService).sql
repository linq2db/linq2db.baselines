﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[s].[ID],
	[s].[FirstName]
FROM
	(
		SELECT
			CASE
				WHEN LENGTH([p].[FirstName]) >= [p].[PersonID] THEN [p].[FirstName]
				ELSE SUBSTR(REPLACE(HEX(ZEROBLOB([p].[PersonID])), '0', '.'), 1, [p].[PersonID] - LENGTH([p].[FirstName])) || [p].[FirstName]
			END as [FirstName],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
	) [s]
WHERE
	[s].[FirstName] <> ''

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

