-- SapHana.Odbc SapHanaOdbc

SELECT
	"c_1"."Id",
	"c_1"."Name"
FROM
	"Company" "c_1"
ORDER BY
	"c_1"."Id"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"d"."CompanyId",
	"d"."Id",
	"d"."Name"
FROM
	"Department" "d"
WHERE
	"d"."CompanyId" IN (1, 2, 3)
ORDER BY
	"d"."Id"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"k_1"."item",
	"d"."Id",
	"d"."DepartmentId",
	"d"."Name",
	"d"."Salary"
FROM
	(
		SELECT 101 AS "item" FROM DUMMY
		UNION ALL
		SELECT 102 FROM DUMMY
		UNION ALL
		SELECT 103 FROM DUMMY
		UNION ALL
		SELECT 201 FROM DUMMY
		UNION ALL
		SELECT 202 FROM DUMMY
		UNION ALL
		SELECT 203 FROM DUMMY
		UNION ALL
		SELECT 204 FROM DUMMY
		UNION ALL
		SELECT 301 FROM DUMMY
		UNION ALL
		SELECT 302 FROM DUMMY
		UNION ALL
		SELECT 303 FROM DUMMY
		UNION ALL
		SELECT 304 FROM DUMMY
		UNION ALL
		SELECT 305 FROM DUMMY) "k_1"
		INNER JOIN "Employee" "d" ON "d"."DepartmentId" = "k_1"."item"
ORDER BY
	"d"."Id"

