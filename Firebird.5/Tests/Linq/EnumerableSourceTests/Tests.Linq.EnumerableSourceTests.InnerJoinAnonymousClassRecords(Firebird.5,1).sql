-- Firebird.5 Firebird4

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT CAST('Janet' AS VARCHAR(5)) AS "Name" FROM rdb$database
			UNION ALL
			SELECT CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "n" ON "p"."LastName" = "n"."Name"

