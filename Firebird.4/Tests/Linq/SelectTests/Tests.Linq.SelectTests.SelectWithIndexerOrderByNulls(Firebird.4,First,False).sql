-- Firebird.4 Firebird4

SELECT
	"x".ID,
	"x"."Index_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY "p"."MiddleName" NULLS FIRST, "p"."PersonID") - 1 as "Index_1",
			"p"."PersonID" as ID,
			"p"."MiddleName"
		FROM
			"Person" "p"
	) "x"
WHERE
	"x"."Index_1" >= 0
ORDER BY
	"x"."MiddleName" NULLS FIRST,
	"x".ID

-- Firebird.4 Firebird4

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

