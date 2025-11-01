-- Firebird.3 Firebird3

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Amount",
	"d"."Currency"
FROM
	(
		SELECT DISTINCT
			"x"."Id"
		FROM
			"TransactionEntity" "x"
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					"LineEntity" "a_Lines"
				WHERE
					"x"."Id" = "a_Lines"."TransactionId" AND EXISTS(
						SELECT
							*
						FROM
							(
								SELECT CAST('A' AS VARCHAR(1)) AS "item" FROM rdb$database
								UNION ALL
								SELECT CAST('B' AS VARCHAR(1)) FROM rdb$database) "t1"
						WHERE
							"a_Lines"."Currency" = "t1"."item" OR "a_Lines"."Currency" IS NULL AND "t1"."item" IS NULL
					)
			)
	) "m_1"
		INNER JOIN "LineEntity" "d" ON "m_1"."Id" = "d"."TransactionId"

-- Firebird.3 Firebird3

SELECT
	"x"."Id",
	"x"."ValidOn"
FROM
	"TransactionEntity" "x"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"LineEntity" "a_Lines"
		WHERE
			"x"."Id" = "a_Lines"."TransactionId" AND EXISTS(
				SELECT
					*
				FROM
					(
						SELECT CAST('A' AS VARCHAR(1)) AS "item" FROM rdb$database
						UNION ALL
						SELECT CAST('B' AS VARCHAR(1)) FROM rdb$database) "t1"
				WHERE
					"a_Lines"."Currency" = "t1"."item" OR "a_Lines"."Currency" IS NULL AND "t1"."item" IS NULL
			)
	)

