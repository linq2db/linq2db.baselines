BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT CAST('Janet' AS VarChar(255) CHARACTER SET UNICODE_FSS) AS "item" FROM rdb$database
			UNION ALL
			SELECT CAST('Doe' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database
			UNION ALL
			SELECT CAST('John' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database
			UNION ALL
			SELECT CAST('Doe' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database) "n" ON "p"."LastName" = "n"."item"

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

