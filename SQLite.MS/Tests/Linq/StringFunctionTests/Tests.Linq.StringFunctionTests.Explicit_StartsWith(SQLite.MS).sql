BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'Hall%' ESCAPE '~' AND Substr([r].[Diagnosis], 1, Length('Hall')) = 'Hall'

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'hall%' ESCAPE '~' AND Substr([r].[Diagnosis], 1, Length('hall')) = 'hall'

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'Hall%' ESCAPE '~'

