-- Firebird.5 Firebird4

SELECT
	"c_1"."Id",
	"c_1"."Name"
FROM
	"Company" "c_1"
ORDER BY
	"c_1"."Id"

-- Firebird.5 Firebird4

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

-- Firebird.5 Firebird4

SELECT
	"k_1"."item",
	"d"."Id",
	"d"."DepartmentId",
	"d"."Name",
	"d"."Salary"
FROM
	(
		SELECT 101 AS "item" FROM rdb$database
		UNION ALL
		SELECT 102 FROM rdb$database
		UNION ALL
		SELECT 103 FROM rdb$database
		UNION ALL
		SELECT 201 FROM rdb$database
		UNION ALL
		SELECT 202 FROM rdb$database
		UNION ALL
		SELECT 203 FROM rdb$database
		UNION ALL
		SELECT 204 FROM rdb$database
		UNION ALL
		SELECT 301 FROM rdb$database
		UNION ALL
		SELECT 302 FROM rdb$database
		UNION ALL
		SELECT 303 FROM rdb$database
		UNION ALL
		SELECT 304 FROM rdb$database
		UNION ALL
		SELECT 305 FROM rdb$database) "k_1"
		INNER JOIN "Employee" "d" ON "d"."DepartmentId" = "k_1"."item"
ORDER BY
	"d"."Id"

