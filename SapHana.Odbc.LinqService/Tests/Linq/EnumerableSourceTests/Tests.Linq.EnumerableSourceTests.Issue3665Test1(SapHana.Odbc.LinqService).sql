BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"x"."PersonID" + "y"."item"
FROM
	"Person" "x"
		CROSS JOIN (
			SELECT 0 AS "item" FROM DUMMY
			UNION ALL
			SELECT 1 FROM DUMMY
			UNION ALL
			SELECT 2 FROM DUMMY
			UNION ALL
			SELECT 3 FROM DUMMY) "y"

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

