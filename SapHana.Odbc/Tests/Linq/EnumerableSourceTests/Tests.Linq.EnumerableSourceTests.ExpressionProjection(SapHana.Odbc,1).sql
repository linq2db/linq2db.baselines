BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @ID Int -- Int32
SET     @ID = 3

SELECT
	"n"."PersonID",
	"n"."FirstName"
FROM
	"Person" "t1"
		INNER JOIN (
			SELECT ? AS "PersonID", 'Janet' AS "FirstName" FROM DUMMY
			UNION ALL
			SELECT ?, 'Doe' FROM DUMMY) "n" ON "t1"."PersonID" = "n"."PersonID"
ORDER BY
	"n"."PersonID"

