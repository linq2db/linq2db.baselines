BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"x"."PersonID" + "y"."item"
FROM
	"Person" "x"
		CROSS JOIN (
			SELECT 0 AS "item" FROM rdb$database
			UNION ALL
			SELECT 1 FROM rdb$database
			UNION ALL
			SELECT 2 FROM rdb$database
			UNION ALL
			SELECT 3 FROM rdb$database) "y"

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

