BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	m_1."Id",
	d."Id",
	d."Amount",
	d."Currency"
FROM
	(
		SELECT DISTINCT
			x."Id"
		FROM
			"TransactionEntity" x
		WHERE
			EXISTS(
				SELECT
					"a_Lines"."Currency"
				FROM
					"LineEntity" "a_Lines"
				WHERE
					x."Id" = "a_Lines"."TransactionId"
				INTERSECT
				SELECT
					t1.item
				FROM
					(VALUES
						('A'), ('B')
					) t1(item)
			)
	) m_1
		INNER JOIN "LineEntity" d ON m_1."Id" = d."TransactionId"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	x."Id",
	x."ValidOn"
FROM
	"TransactionEntity" x
WHERE
	EXISTS(
		SELECT
			"a_Lines"."Currency"
		FROM
			"LineEntity" "a_Lines"
		WHERE
			x."Id" = "a_Lines"."TransactionId"
		INTERSECT
		SELECT
			t1.item
		FROM
			(VALUES
				('A'), ('B')
			) t1(item)
	)
ORDER BY
	x."ValidOn"

