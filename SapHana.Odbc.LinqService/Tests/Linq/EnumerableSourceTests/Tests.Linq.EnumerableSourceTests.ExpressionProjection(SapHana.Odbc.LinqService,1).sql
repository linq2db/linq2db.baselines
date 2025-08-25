BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @ID Int -- Int32
SET     @ID = 3

SELECT
	"n"."ID",
	"n"."FirstName"
FROM
	"Person" "t1"
		INNER JOIN (
			SELECT ? AS "ID", 'Janet' AS "FirstName" FROM DUMMY
			UNION ALL
			SELECT ?, 'Doe' FROM DUMMY) "n" ON "t1"."PersonID" = "n"."ID"
ORDER BY
	"n"."ID"

