﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution' ESCAPE '~' AND Substr([r].[Diagnosis], Length('Persecution') * -1) = 'Persecution'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution' ESCAPE '~' AND Substr([r].[Diagnosis], Length('persecution') * -1) = 'persecution'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution' ESCAPE '~'

