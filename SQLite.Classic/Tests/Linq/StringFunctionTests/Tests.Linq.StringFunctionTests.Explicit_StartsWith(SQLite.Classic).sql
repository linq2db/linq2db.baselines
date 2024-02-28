BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'Hall%' ESCAPE '~' AND Substr([r].[Diagnosis], 1, Length('Hall')) = 'Hall'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'hall%' ESCAPE '~' AND Substr([r].[Diagnosis], 1, Length('hall')) = 'hall'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'Hall%' ESCAPE '~'

