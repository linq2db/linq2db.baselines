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
			SELECT 3 AS ID FROM rdb$database
			UNION ALL
			SELECT 4 FROM rdb$database) "n" ON "p"."PersonID" = "n".ID

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
			SELECT 5 AS ID FROM rdb$database
			UNION ALL
			SELECT 6 FROM rdb$database) "n" ON "p"."PersonID" = "n".ID

