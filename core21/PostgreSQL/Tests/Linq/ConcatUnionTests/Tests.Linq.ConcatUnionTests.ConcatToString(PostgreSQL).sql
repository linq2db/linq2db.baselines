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
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @pattern Text(3) -- String
SET     @pattern = '%1%'
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	t1."FirstName"
FROM
	(
		SELECT
			p."FirstName"
		FROM
			"Person" p
		WHERE
			p."FirstName" LIKE '1'
		UNION ALL
		SELECT
			p_1."FirstName"
		FROM
			"Person" p_1
		WHERE
			Cast(p_1."PersonID" as VarChar(11)) LIKE :pattern ESCAPE '~'
	) t1
LIMIT :take

