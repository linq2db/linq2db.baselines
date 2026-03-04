-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."TestId"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "x"."TestId" ORDER BY "x"."TestId") as "RowNumber",
			"x"."TestId",
			"x"."Id"
		FROM
			"TestTable" "x"
		WHERE
			"x"."TestId" NOT IN (20, 30)
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."TestId"

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."TestId"
FROM
	"TestTable" "t1"

