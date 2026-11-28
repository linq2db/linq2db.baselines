-- Firebird.2.5 Firebird
SELECT
	"c_1"."Id"
FROM
	"Company" "c_1"
ORDER BY
	"c_1"."Id"

-- Firebird.2.5 Firebird
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
		INNER JOIN "Department" "d" ON "d"."CompanyId" = "k_1"."item"
ORDER BY
	"d"."Id"

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	(
		SELECT
			1 as "c1"
		FROM rdb$database
	) "t2"
		CROSS JOIN (
			SELECT FIRST 1
				"c_1"."Id",
				"c_1"."Name"
			FROM
				"Company" "c_1"
			ORDER BY
				"c_1"."Id"
		) "t1"

