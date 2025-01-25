BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT 2 AS ID FROM rdb$database
			UNION ALL
			SELECT 3 FROM rdb$database) "n" ON "p"."PersonID" = "n".ID

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT 4 AS ID FROM rdb$database
			UNION ALL
			SELECT 5 FROM rdb$database) "n" ON "p"."PersonID" = "n".ID

