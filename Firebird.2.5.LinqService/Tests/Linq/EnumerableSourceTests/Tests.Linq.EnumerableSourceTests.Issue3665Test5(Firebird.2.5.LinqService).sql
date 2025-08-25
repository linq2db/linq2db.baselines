BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"y"."item"
FROM
	"Person" "x"
		CROSS JOIN (
			SELECT CAST('M' AS CHAR(1)) AS "item" FROM rdb$database
			UNION ALL
			SELECT CAST('F' AS CHAR(1)) FROM rdb$database
			UNION ALL
			SELECT CAST('U' AS CHAR(1)) FROM rdb$database
			UNION ALL
			SELECT CAST('O' AS CHAR(1)) FROM rdb$database) "y"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

