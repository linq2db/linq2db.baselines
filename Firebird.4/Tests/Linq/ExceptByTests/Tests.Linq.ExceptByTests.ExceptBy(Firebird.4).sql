-- Firebird.4 Firebird4

SELECT
	"x_1"."Id",
	"x_1"."TestId"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "x"."TestId" ORDER BY "x"."TestId") as "RowNumber",
			"x"."Id",
			"x"."TestId"
		FROM
			"TestTable" "x"
		WHERE
			"x"."TestId" NOT IN (20)
	) "x_1"
WHERE
	"x_1"."RowNumber" = 1

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."TestId"
FROM
	"TestTable" "t1"

