﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Paranoid%' ESCAPE '~' AND InStr([r].[Diagnosis], 'Paranoid') > 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%paranoid%' ESCAPE '~' AND InStr([r].[Diagnosis], 'paranoid') > 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%paranoid%' ESCAPE '~'

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Paranoid%' ESCAPE '~'

