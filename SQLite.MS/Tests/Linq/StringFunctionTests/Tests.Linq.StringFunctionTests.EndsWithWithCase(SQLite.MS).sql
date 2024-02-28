BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE '%Persecution' ESCAPE '~' AND Substr([p].[Diagnosis], Length('Persecution') * -1) = 'Persecution' AND
	[p].[PersonID] = 2

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE '%Persecution' ESCAPE '~' OR NOT Substr([p].[Diagnosis], Length('Persecution') * -1) = 'Persecution') AND
	[p].[PersonID] = 2

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE '%persecution' ESCAPE '~' AND Substr([p].[Diagnosis], Length('persecution') * -1) = 'persecution' AND
	[p].[PersonID] = 2

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE '%persecution' ESCAPE '~' OR NOT Substr([p].[Diagnosis], Length('persecution') * -1) = 'persecution') AND
	[p].[PersonID] = 2

