﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE '%Persecution' ESCAPE '~' AND
	Substr([p].[Diagnosis], -11) = 'Persecution' AND [p].[PersonID] = 2

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE '%Persecution' ESCAPE '~' OR Substr([p].[Diagnosis], -11) <> 'Persecution') AND
	[p].[PersonID] = 2

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE '%persecution' ESCAPE '~' AND
	Substr([p].[Diagnosis], -11) = 'persecution' AND [p].[PersonID] = 2

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE '%persecution' ESCAPE '~' OR Substr([p].[Diagnosis], -11) <> 'persecution') AND
	[p].[PersonID] = 2

