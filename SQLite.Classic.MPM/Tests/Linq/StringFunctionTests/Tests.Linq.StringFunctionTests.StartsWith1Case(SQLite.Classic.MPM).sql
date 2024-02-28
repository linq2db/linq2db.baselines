﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'Jo%' ESCAPE '~' AND Substr([p].[FirstName], 1, Length('Jo')) = 'Jo' AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'jo%' ESCAPE '~' AND Substr([p].[FirstName], 1, Length('jo')) = 'jo' AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE 'Jo%' ESCAPE '~' OR NOT Substr([p].[FirstName], 1, Length('Jo')) = 'Jo') AND
	[p].[PersonID] = 1

