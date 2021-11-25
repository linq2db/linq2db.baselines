﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[p1].[PersonID],
	[p2].[FirstName]
FROM
	[Person] [p1]
		CROSS JOIN [Person] [p2]
WHERE
	[p1].[PersonID] = [p2].[PersonID] AND [p2].[PersonID] = @id

