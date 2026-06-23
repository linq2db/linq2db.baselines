-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Company" "t1"
ORDER BY
	"t1"."Id"

-- Firebird.4 Firebird4

SELECT
	"m_1"."Id",
	"d_1"."Id",
	"d_1"."DepartmentId",
	"d_1"."Name",
	"d_1"."Salary"
FROM
	(
		SELECT DISTINCT
			"d"."Id"
		FROM
			(
				SELECT 1 AS "item" FROM rdb$database
				UNION ALL
				SELECT 2 FROM rdb$database
				UNION ALL
				SELECT 3 FROM rdb$database) "t1"
				INNER JOIN "Department" "d" ON "t1"."item" = "d"."CompanyId"
	) "m_1"
		INNER JOIN "Employee" "d_1" ON "m_1"."Id" = "d_1"."DepartmentId"

-- Firebird.4 Firebird4

SELECT
	"k_1"."item",
	"d"."Id",
	"d"."CompanyId",
	"d"."Name",
	"d"."IsActive"
FROM
	(
		SELECT 1 AS "item" FROM rdb$database
		UNION ALL
		SELECT 2 FROM rdb$database
		UNION ALL
		SELECT 3 FROM rdb$database) "k_1"
		INNER JOIN "Department" "d" ON "k_1"."item" = "d"."CompanyId"

