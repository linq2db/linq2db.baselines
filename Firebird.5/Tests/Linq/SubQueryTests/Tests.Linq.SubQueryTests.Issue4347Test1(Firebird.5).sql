-- Firebird.5 Firebird4

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Amount",
	"d"."Currency"
FROM
	"TransactionEntity" "m_1"
		INNER JOIN "LineEntity" "d" ON "m_1"."Id" = "d"."TransactionId"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"LineEntity" "a_Lines"
		WHERE
			"m_1"."Id" = "a_Lines"."TransactionId" AND EXISTS(
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

-- Firebird.5 Firebird4

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
ORDER BY
	"x"."ValidOn"

