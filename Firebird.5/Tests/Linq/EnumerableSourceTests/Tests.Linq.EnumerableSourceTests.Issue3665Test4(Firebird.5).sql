-- Firebird.5 Firebird4

SELECT
	"x"."PersonID" + "y"."item"
FROM
	"Person" "x"
		CROSS JOIN (
			SELECT 1 AS "item" FROM rdb$database
			UNION ALL
			SELECT 3 FROM rdb$database) "y"

-- Firebird.5 Firebird4

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

