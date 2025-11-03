-- SapHana.Odbc SapHanaOdbc

SELECT
	"g_1"."Id",
	SUM("g_1"."Id")
FROM
	(SELECT CAST(NULL AS Integer) "Id" FROM DUMMY WHERE 1 = 0) "g_1"
GROUP BY
	"g_1"."Id"

