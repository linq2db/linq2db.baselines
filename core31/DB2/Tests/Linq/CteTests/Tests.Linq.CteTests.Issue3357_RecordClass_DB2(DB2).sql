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
-- DB2 DB2.LUW DB2LUW

WITH "cte" ("Id", "FirstName", "LastName")
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
		"t1"."Id",
		"t1"."FirstName",
		"t1"."LastName"
	FROM
		(
			SELECT
				"r"."PersonID" as "Id",
				"r"."FirstName",
				"r"."LastName"
			FROM
				"cte" "p_1",
				"Person" "r"
			WHERE
				"p_1"."FirstName" = "r"."LastName"
		) "t1"
)
SELECT
	"t2"."Id",
	"t2"."FirstName",
	"t2"."LastName"
FROM
	"cte" "t2"

