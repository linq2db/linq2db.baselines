BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"y"."item"
FROM
	"Person" "x"
		CROSS JOIN (
			SELECT 'M' AS "item" FROM DUMMY
			UNION ALL
			SELECT 'F' FROM DUMMY
			UNION ALL
			SELECT 'U' FROM DUMMY
			UNION ALL
			SELECT 'O' FROM DUMMY) "y"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

