-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Kind",
	CASE
		WHEN "t1"."Kind" = 'Active' THEN '1'
		ELSE '0'
	END
FROM
	(
		SELECT
			"d"."Id",
			"d"."Name",
			CAST('Active' AS VARCHAR(6)) as "Kind"
		FROM
			"Department" "d"
		WHERE
			"d"."IsActive" = '1'
		UNION ALL
		SELECT
			"d_1"."Id",
			"d_1"."Name",
			CAST('Inactive' AS VARCHAR(8)) as "Kind"
		FROM
			"Department" "d_1"
		WHERE
			"d_1"."IsActive" = '0'
	) "t1"

-- Firebird.2.5 Firebird

SELECT
	"k_1"."Item1",
	"k_1"."Item2",
	"d"."Id",
	"d"."Name"
FROM
	(
		SELECT 101 AS "Item1", CAST('Active' AS VARCHAR(6)) AS "Item2" FROM rdb$database
		UNION ALL
		SELECT 103, CAST('Active' AS VARCHAR(6)) FROM rdb$database
		UNION ALL
		SELECT 201, CAST('Active' AS VARCHAR(6)) FROM rdb$database
		UNION ALL
		SELECT 203, CAST('Active' AS VARCHAR(6)) FROM rdb$database
		UNION ALL
		SELECT 301, CAST('Active' AS VARCHAR(6)) FROM rdb$database
		UNION ALL
		SELECT 303, CAST('Active' AS VARCHAR(6)) FROM rdb$database
		UNION ALL
		SELECT 305, CAST('Active' AS VARCHAR(6)) FROM rdb$database
		UNION ALL
		SELECT 102, CAST('Inactive' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 202, CAST('Inactive' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 204, CAST('Inactive' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 302, CAST('Inactive' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 304, CAST('Inactive' AS VARCHAR(8)) FROM rdb$database) "k_1"
		INNER JOIN "Employee" "d" ON "k_1"."Item1" = "d"."DepartmentId" AND "k_1"."Item2" = 'Active'
WHERE
	"d"."Salary" > 45000

-- Firebird.2.5 Firebird

SELECT
	"k_1"."Item1",
	"k_1"."Item2",
	"d"."Id",
	"d"."Name"
FROM
	(
		SELECT 101 AS "Item1", CAST('Active' AS VARCHAR(6)) AS "Item2" FROM rdb$database
		UNION ALL
		SELECT 103, CAST('Active' AS VARCHAR(6)) FROM rdb$database
		UNION ALL
		SELECT 201, CAST('Active' AS VARCHAR(6)) FROM rdb$database
		UNION ALL
		SELECT 203, CAST('Active' AS VARCHAR(6)) FROM rdb$database
		UNION ALL
		SELECT 301, CAST('Active' AS VARCHAR(6)) FROM rdb$database
		UNION ALL
		SELECT 303, CAST('Active' AS VARCHAR(6)) FROM rdb$database
		UNION ALL
		SELECT 305, CAST('Active' AS VARCHAR(6)) FROM rdb$database
		UNION ALL
		SELECT 102, CAST('Inactive' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 202, CAST('Inactive' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 204, CAST('Inactive' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 302, CAST('Inactive' AS VARCHAR(8)) FROM rdb$database
		UNION ALL
		SELECT 304, CAST('Inactive' AS VARCHAR(8)) FROM rdb$database) "k_1"
		INNER JOIN "Contractor" "d" ON "k_1"."Item1" = "d"."DepartmentId" AND "k_1"."Item2" = 'Inactive'

