BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p1  -- Byte
SET     @p1 = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	CASE
		WHEN ? = 1 THEN 0
		ELSE Locate("p"."FirstName", '') - 1
	END = 0 AND
	"p"."PersonID" = 1

