-- Firebird.4 Firebird4
SELECT
	"c_1"."Id"
FROM
	"Company" "c_1"
ORDER BY
	"c_1"."Id"

-- Firebird.4 Firebird4
SELECT
	"k_1"."item",
	"d_1"."Id",
	"d_1"."Name"
FROM
	(
		SELECT 1 AS "item" FROM rdb$database
		UNION ALL
		SELECT 2 FROM rdb$database
		UNION ALL
		SELECT 3 FROM rdb$database) "k_1"
		CROSS JOIN LATERAL (
			SELECT
				"d"."Id",
				"d"."Name"
			FROM
				"Department" "d"
			WHERE
				"k_1"."item" = "d"."CompanyId"
			ORDER BY
				"d"."Id"
			OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 
		) "d_1"

