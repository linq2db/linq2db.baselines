-- Firebird.3 Firebird3

SELECT
	"c_1"."Id",
	"c_1"."Name",
	"c_1"."Id",
	"c_1"."Id" * 2,
	"c_1"."Id" * 3,
	"c_1"."Id" * 4,
	"c_1"."Id" * 5,
	"c_1"."Id" * 6,
	"c_1"."Id" * 7,
	"c_1"."Id" * 8,
	"c_1"."Id" * 9,
	"c_1"."Id" * 10,
	"c_1"."Id" * 11,
	"c_1"."Id" * 12,
	"c_1"."Id" * 13,
	"c_1"."Id" * 14,
	"c_1"."Id" * 15,
	"c_1"."Id" * 16,
	"c_1"."Id" * 17,
	"c_1"."Id" * 18,
	"c_1"."Id" * 19,
	"c_1"."Id" * 20,
	"c_1"."Id" * 21,
	"c_1"."Id" * 22,
	"c_1"."Id" * 23,
	"c_1"."Id" * 24,
	"c_1"."Id" * 25,
	"c_1"."Id" * 26,
	"c_1"."Id" * 27,
	"c_1"."Id" * 28,
	"c_1"."Id" * 29,
	"c_1"."Id" * 30,
	"c_1"."Id" * 31,
	"c_1"."Id" * 32,
	"c_1"."Id" * 33,
	"c_1"."Id" * 34,
	"c_1"."Id" * 35,
	"c_1"."Id" * 36,
	"c_1"."Id" * 37,
	"c_1"."Id" * 38,
	"c_1"."Id" * 39,
	"c_1"."Id" * 40,
	"c_1"."Id" * 41,
	"c_1"."Id" * 42,
	"c_1"."Id" * 43,
	"c_1"."Id" * 44,
	"c_1"."Id" * 45,
	"c_1"."Id" * 46,
	"c_1"."Id" * 47,
	"c_1"."Id" * 48,
	"c_1"."Id" * 49,
	"c_1"."Id" * 50,
	"c_1"."Id" * 51,
	"c_1"."Id" * 52,
	"c_1"."Id" * 53,
	"c_1"."Id" * 54,
	"c_1"."Id" * 55,
	"c_1"."Id" * 56,
	"c_1"."Id" * 57,
	"c_1"."Id" * 58,
	"c_1"."Id" * 59,
	"c_1"."Id" * 60
FROM
	"Company" "c_1"
ORDER BY
	"c_1"."Id"

-- Firebird.3 Firebird3

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

