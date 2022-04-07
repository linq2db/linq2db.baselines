BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- Firebird3 Firebird

WITH RECURSIVE "cte" ("Id", "FirstName", "LastName")
AS
(
	SELECT
		"p"."PersonID",
		"p"."FirstName",
		"p"."LastName"
	FROM
		"Person" "p"
	UNION ALL
	SELECT
		"r"."PersonID",
		"r"."FirstName",
		"r"."LastName"
	FROM
		"cte" "p_1"
			INNER JOIN "Person" "r" ON "p_1"."FirstName" = "r"."LastName"
)
SELECT
	"t1"."Id",
	"t1"."FirstName",
	"t1"."LastName"
FROM
	"cte" "t1"

