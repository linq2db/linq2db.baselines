BeforeExecute
-- SapHana.Odbc SapHanaOdbc

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
					"a_Lines"."Currency"
				FROM
					"LineEntity" "a_Lines"
				WHERE
					"x"."Id" = "a_Lines"."TransactionId"
				INTERSECT
				SELECT
					"t1"."item"
				FROM
					(
						SELECT 'A' AS "item" FROM DUMMY
						UNION ALL
						SELECT 'B' FROM DUMMY) "t1"
			)
	) "m_1"
		INNER JOIN "LineEntity" "d" ON "m_1"."Id" = "d"."TransactionId"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id",
	"x"."ValidOn"
FROM
	"TransactionEntity" "x"
WHERE
	EXISTS(
		SELECT
			"a_Lines"."Currency"
		FROM
			"LineEntity" "a_Lines"
		WHERE
			"x"."Id" = "a_Lines"."TransactionId"
		INTERSECT
		SELECT
			"t1"."item"
		FROM
			(
				SELECT 'A' AS "item" FROM DUMMY
				UNION ALL
				SELECT 'B' FROM DUMMY) "t1"
	)

