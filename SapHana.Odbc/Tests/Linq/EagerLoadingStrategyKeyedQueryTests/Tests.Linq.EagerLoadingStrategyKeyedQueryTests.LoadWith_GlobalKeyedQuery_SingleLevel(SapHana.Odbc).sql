-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Company" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"k_1"."item",
	"d"."Id",
	"d"."CompanyId",
	"d"."Name",
	"d"."IsActive"
FROM
	(
		SELECT 1 AS "item" FROM DUMMY
		UNION ALL
		SELECT 2 FROM DUMMY
		UNION ALL
		SELECT 3 FROM DUMMY) "k_1"
		INNER JOIN "Department" "d" ON "k_1"."item" = "d"."CompanyId"

