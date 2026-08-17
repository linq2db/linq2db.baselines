-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
SELECT
	"k_1"."Item1",
	"k_1"."Item2",
	"k_1"."Item3",
	"d"."Id",
	"d"."Name"
FROM
	(
		SELECT 101 AS "Item1", 1 AS "Item2", CAST('Company1' AS VARCHAR(8)) AS "Item3" FROM rdb$database
		UNION ALL
		SELECT 102, 1, CAST('Company1' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 103, 1, CAST('Company1' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 201, 2, CAST('Company2' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 202, 2, CAST('Company2' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 203, 2, CAST('Company2' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 204, 2, CAST('Company2' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 301, 3, CAST('Company3' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 302, 3, CAST('Company3' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 303, 3, CAST('Company3' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 304, 3, CAST('Company3' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 305, 3, CAST('Company3' AS VARCHAR(8)) FROM rdb$database) "k_1"
		INNER JOIN "Employee" "d" ON "d"."DepartmentId" = "k_1"."Item1"
ORDER BY
	"d"."Id"

-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
SELECT
	"c_1"."Id",
	"c_1"."Name"
FROM
	"Company" "c_1"
ORDER BY
	"c_1"."Id"

