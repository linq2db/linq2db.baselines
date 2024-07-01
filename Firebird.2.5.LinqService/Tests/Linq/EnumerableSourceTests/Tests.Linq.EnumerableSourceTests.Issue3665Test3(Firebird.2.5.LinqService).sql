BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."PersonID" + "y"."item"
FROM
	"Person" "x"
		CROSS JOIN (
			SELECT 1 AS "item" FROM rdb$database
			UNION ALL
			SELECT 3 FROM rdb$database) "y"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

