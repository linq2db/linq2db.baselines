﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	([r].[Diagnosis] LIKE '%Persecution' ESCAPE '~' AND Substr([r].[Diagnosis], -11) = 'Persecution')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	([r].[Diagnosis] LIKE '%persecution' ESCAPE '~' AND Substr([r].[Diagnosis], -11) = 'persecution')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution' ESCAPE '~'

