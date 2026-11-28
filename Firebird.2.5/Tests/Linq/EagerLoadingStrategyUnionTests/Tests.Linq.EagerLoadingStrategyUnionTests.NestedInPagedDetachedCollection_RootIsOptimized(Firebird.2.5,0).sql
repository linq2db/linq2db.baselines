-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
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
		SELECT 2 FROM rdb$database) "k_1"
		INNER JOIN "Department" "d" ON "d"."CompanyId" = "k_1"."item"
ORDER BY
	"d"."Id"

-- Firebird.2.5 Firebird
SELECT
	(
		SELECT FIRST 1
			"c_1"."Id"
		FROM
			"Company" "c_1"
		ORDER BY
			"c_1"."Id"
	)
FROM rdb$database

