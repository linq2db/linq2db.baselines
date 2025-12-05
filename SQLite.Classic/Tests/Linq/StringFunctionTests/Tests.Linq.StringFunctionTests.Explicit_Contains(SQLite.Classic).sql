-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Paranoid%' ESCAPE '~' AND InStr([r].[Diagnosis], 'Paranoid') > 0

-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%paranoid%' ESCAPE '~' AND InStr([r].[Diagnosis], 'paranoid') > 0

-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%paranoid%' ESCAPE '~'

-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Paranoid%' ESCAPE '~'

