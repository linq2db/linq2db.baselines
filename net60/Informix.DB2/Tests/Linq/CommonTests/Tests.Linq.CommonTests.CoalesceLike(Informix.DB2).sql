BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	CASE
		WHEN CASE
			WHEN p.FirstName IS NULL THEN NULL
			ELSE CASE
				WHEN p.FirstName LIKE 'Jo%' ESCAPE '~'
					THEN 't'
				ELSE 'f'
			END
		END IS NULL
			THEN 'f'
		WHEN p.FirstName IS NULL THEN NULL
		ELSE CASE
			WHEN p.FirstName LIKE 'Jo%' ESCAPE '~'
				THEN 't'
			ELSE 'f'
		END
	END = 't'

