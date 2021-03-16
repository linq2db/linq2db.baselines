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
			SELECT
				'Doe' as "c1"
			FROM rdb$database
		) "n" ON "p"."LastName" = "n"."c1"

