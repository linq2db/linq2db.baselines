-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT 0 AS "Id", 'Data 0' AS "Data" FROM DUMMY
		UNION ALL
		SELECT 1, 'Data 1' FROM DUMMY) "t1"
ORDER BY
	"t1"."Id"

