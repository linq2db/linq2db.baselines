BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 2
DECLARE @ID  -- Int32
SET     @ID = 3

SELECT
	"n"."FirstName",
	"n"."PersonID"
FROM
	"Person" "t1"
		INNER JOIN (
			SELECT 'Janet' AS "FirstName", ? AS "PersonID" FROM DUMMY
			UNION ALL
			SELECT 'Doe', ? FROM DUMMY) "n" ON "t1"."PersonID" = "n"."PersonID"
ORDER BY
	"n"."PersonID"

