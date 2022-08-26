BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 2
DECLARE @ID_1  -- Int32
SET     @ID_1 = 3

SELECT
	"n"."FirstName",
	"n"."PersonID"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT 'Janet' AS "FirstName", ? AS "PersonID" FROM DUMMY
			UNION ALL
			SELECT 'Doe', ? FROM DUMMY) "n" ON "p"."PersonID" = "n"."PersonID"
ORDER BY
	"n"."PersonID"

