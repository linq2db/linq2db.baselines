-- Firebird.4 Firebird4

SELECT
	"d"."Id",
	"d"."Name"
FROM
	"Department" "d"
ORDER BY
	"d"."Id"

-- Firebird.4 Firebird4

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
		SELECT 103 FROM rdb$database) "k_1"
		INNER JOIN "Employee" "d" ON "d"."DepartmentId" = "k_1"."item"
ORDER BY
	"d"."Id"

-- Firebird.4 Firebird4

SELECT
	"k_1"."item",
	"d"."Id",
	"d"."DepartmentId",
	"d"."Name",
	"d"."Rate"
FROM
	(
		SELECT 101 AS "item" FROM rdb$database
		UNION ALL
		SELECT 102 FROM rdb$database
		UNION ALL
		SELECT 103 FROM rdb$database) "k_1"
		INNER JOIN "Contractor" "d" ON "d"."DepartmentId" = "k_1"."item"
ORDER BY
	"d"."Id"

