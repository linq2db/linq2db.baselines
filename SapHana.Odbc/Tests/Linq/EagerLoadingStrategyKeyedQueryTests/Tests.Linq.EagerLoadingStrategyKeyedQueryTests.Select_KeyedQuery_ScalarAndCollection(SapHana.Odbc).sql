-- SapHana.Odbc SapHanaOdbc

SELECT
	"c_1"."Id",
	"c_1"."Name",
	(
		SELECT
			COUNT(*)
		FROM
			"Department" "d"
		WHERE
			"d"."CompanyId" = "c_1"."Id"
	)
FROM
	"Company" "c_1"
ORDER BY
	"c_1"."Id"

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
		INNER JOIN "Department" "d" ON "d"."CompanyId" = "k_1"."item"
ORDER BY
	"d"."Id"

