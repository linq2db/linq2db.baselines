BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."PersonID",
	"y"."value__"
FROM
	"Person" "x"
		CROSS JOIN (
			SELECT 0 AS "value__" FROM DUMMY
			UNION ALL
			SELECT 1 FROM DUMMY
			UNION ALL
			SELECT 2 FROM DUMMY
			UNION ALL
			SELECT 3 FROM DUMMY) "y"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

