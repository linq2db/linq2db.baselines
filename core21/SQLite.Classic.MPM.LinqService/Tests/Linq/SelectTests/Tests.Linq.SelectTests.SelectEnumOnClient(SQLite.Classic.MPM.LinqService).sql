﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[person_1].[PersonID]
FROM
	[Person] [person_1]
LIMIT @take

