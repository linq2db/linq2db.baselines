-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT 20 AS "Id", 'Data 20' AS "Data" FROM DUMMY
		UNION ALL
		SELECT 21, 'Data 21' FROM DUMMY
		UNION ALL
		SELECT 22, 'Data 22' FROM DUMMY) "t1"

