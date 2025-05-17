BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution' ESCAPE '~' AND
	Substr([r].[Diagnosis], -11) = 'Persecution'

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution' ESCAPE '~' AND
	Substr([r].[Diagnosis], -11) = 'persecution'

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution' ESCAPE '~'

