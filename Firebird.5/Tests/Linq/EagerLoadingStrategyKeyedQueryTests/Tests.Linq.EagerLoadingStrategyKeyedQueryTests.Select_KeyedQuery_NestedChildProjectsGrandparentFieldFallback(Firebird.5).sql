-- Firebird.5 Firebird4

SELECT
	"m_1"."Id",
	"m_1"."Name",
	"d"."Id"
FROM
	"Company" "m_1"
		INNER JOIN "Department" "d" ON "d"."CompanyId" = "m_1"."Id"
ORDER BY
	"d"."Id",
	"m_1"."Id"

-- Firebird.5 Firebird4

SELECT
	"k_1"."Item1",
	"k_1"."Item2",
	"k_1"."Item3",
	"d"."Id",
	"d"."Name"
FROM
	(
		SELECT 101 AS "Item1", CAST('Company1' AS VARCHAR(8)) AS "Item2", 1 AS "Item3" FROM rdb$database
		UNION ALL
		SELECT 102, CAST('Company1' AS VARCHAR(8)), 1 FROM rdb$database
		UNION ALL
		SELECT 103, CAST('Company1' AS VARCHAR(8)), 1 FROM rdb$database
		UNION ALL
		SELECT 201, CAST('Company2' AS VARCHAR(8)), 2 FROM rdb$database
		UNION ALL
		SELECT 202, CAST('Company2' AS VARCHAR(8)), 2 FROM rdb$database
		UNION ALL
		SELECT 203, CAST('Company2' AS VARCHAR(8)), 2 FROM rdb$database
		UNION ALL
		SELECT 204, CAST('Company2' AS VARCHAR(8)), 2 FROM rdb$database
		UNION ALL
		SELECT 301, CAST('Company3' AS VARCHAR(8)), 3 FROM rdb$database
		UNION ALL
		SELECT 302, CAST('Company3' AS VARCHAR(8)), 3 FROM rdb$database
		UNION ALL
		SELECT 303, CAST('Company3' AS VARCHAR(8)), 3 FROM rdb$database
		UNION ALL
		SELECT 304, CAST('Company3' AS VARCHAR(8)), 3 FROM rdb$database
		UNION ALL
		SELECT 305, CAST('Company3' AS VARCHAR(8)), 3 FROM rdb$database) "k_1"
		INNER JOIN "Employee" "d" ON "d"."DepartmentId" = "k_1"."Item1"
ORDER BY
	"d"."Id"

-- Firebird.5 Firebird4

SELECT
	"c_1"."Id",
	"c_1"."Name"
FROM
	"Company" "c_1"
ORDER BY
	"c_1"."Id"

