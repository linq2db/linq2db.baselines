-- Firebird.2.5 Firebird

SELECT FIRST 2
	"c_1"."Id",
	"c_1"."Name"
FROM
	"Company" "c_1"

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
		SELECT 2 FROM rdb$database) "k_1"
		INNER JOIN "Department" "d" ON "d"."CompanyId" = "k_1"."item"
ORDER BY
	"d"."Id"

