-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."TestId"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."TestId" ORDER BY "e"."Id") as "RowNumber",
			"e"."TestId",
			"e"."Id"
		FROM
			"TestTable" "e"
		WHERE
			"e"."TestId" NOT IN (20)
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."TestId" DESC,
	"t1"."Id"

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."TestId"
FROM
	"TestTable" "t1"

