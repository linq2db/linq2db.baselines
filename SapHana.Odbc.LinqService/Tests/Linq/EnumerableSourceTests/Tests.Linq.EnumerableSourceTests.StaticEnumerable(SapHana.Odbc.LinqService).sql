﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(
				SELECT 1 AS "item" FROM DUMMY
				UNION ALL
				SELECT 2 FROM DUMMY
				UNION ALL
				SELECT 3 FROM DUMMY) "v"
		WHERE
			"v"."item" = "p"."PersonID"
	)

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

