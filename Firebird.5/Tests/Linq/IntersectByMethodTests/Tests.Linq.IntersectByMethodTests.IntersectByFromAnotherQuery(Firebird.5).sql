-- Firebird.5 Firebird4

SELECT
	"t2"."Id",
	"t2"."TestId"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."TestId" ORDER BY "e"."Id") as "RowNumber",
			"e"."Id",
			"e"."TestId"
		FROM
			"TestTable" "e"
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					(
						SELECT DISTINCT
							"x"."TestId"
						FROM
							"TestTable" "x"
						WHERE
							"x"."Id" <= 2
					) "t1"
				WHERE
					"e"."TestId" = "t1"."TestId"
			)
	) "t2"
WHERE
	"t2"."RowNumber" = 1
ORDER BY
	"t2"."Id" DESC

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."TestId"
FROM
	"TestTable" "t1"

