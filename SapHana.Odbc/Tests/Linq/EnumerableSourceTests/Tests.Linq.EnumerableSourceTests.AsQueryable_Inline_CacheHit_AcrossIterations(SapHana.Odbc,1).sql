-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT 10 AS "Id", 'Data 10' AS "Data" FROM DUMMY
		UNION ALL
		SELECT 11, 'Data 11' FROM DUMMY) "t1"

