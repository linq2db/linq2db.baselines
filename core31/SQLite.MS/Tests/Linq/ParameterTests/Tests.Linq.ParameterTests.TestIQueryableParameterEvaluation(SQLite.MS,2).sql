﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 2

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] <> @paramCopy AND [p].[PersonID] = [_].[PersonID]
	)

