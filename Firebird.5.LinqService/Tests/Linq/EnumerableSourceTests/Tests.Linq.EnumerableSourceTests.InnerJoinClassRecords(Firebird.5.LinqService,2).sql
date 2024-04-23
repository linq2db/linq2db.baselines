BeforeExecute
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
			SELECT 1 AS ID FROM rdb$database
			UNION ALL
			SELECT 2 FROM rdb$database) "n" ON "p"."PersonID" = "n".ID

