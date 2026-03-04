-- Firebird.4 Firebird4

SELECT
	"t2"."Id",
	"t2"."TestId"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "x"."TestId" ORDER BY "x"."TestId") as "RowNumber",
			"x"."TestId",
			"x"."Id"
		FROM
			"TestTable" "x"
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					(
						SELECT DISTINCT
							"x_1"."TestId"
						FROM
							"TestTable" "x_1"
						WHERE
							"x_1"."Id" <= 2
					) "t1"
				WHERE
					"x"."TestId" = "t1"."TestId"
			)
	) "t2"
WHERE
	"t2"."RowNumber" = 1
ORDER BY
	"t2"."TestId"

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."TestId"
FROM
	"TestTable" "t1"

