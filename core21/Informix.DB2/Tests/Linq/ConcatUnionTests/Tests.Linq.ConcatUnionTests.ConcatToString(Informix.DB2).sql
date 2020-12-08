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
DECLARE @pattern_1 VarChar(3) -- String
SET     @pattern_1 = '%1%'

SELECT FIRST 10
	t1.FirstName
FROM
	(
		SELECT
			p.FirstName
		FROM
			Person p
		WHERE
			p.FirstName LIKE '1'
		UNION ALL
		SELECT
			p_1.FirstName
		FROM
			Person p_1
		WHERE
			To_Char(p_1.PersonID) LIKE @pattern_1 ESCAPE '~'
	) t1

