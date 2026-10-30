-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 3

SELECT
	"n"."ID",
	"n"."FirstName"
FROM
	"Person" "t1"
		INNER JOIN (
			SELECT :"ID" AS "ID", 'Janet' AS "FirstName" FROM DUMMY
			UNION ALL
			SELECT :"ID_1", 'Doe' FROM DUMMY) "n" ON "t1"."PersonID" = "n"."ID"
ORDER BY
	"n"."ID"

