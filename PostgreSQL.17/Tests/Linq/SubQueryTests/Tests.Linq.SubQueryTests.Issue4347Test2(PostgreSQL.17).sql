-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d."Id",
	d."Amount",
	d."Currency"
FROM
	"TransactionEntity" m_1
		INNER JOIN "LineEntity" d ON m_1."Id" = d."TransactionId"
WHERE
	EXISTS(
		SELECT
			"a_Lines"."Currency"
		FROM
			"LineEntity" "a_Lines"
		WHERE
			m_1."Id" = "a_Lines"."TransactionId"
		INTERSECT
		SELECT
			t1.item
		FROM
			(VALUES
				('A'), ('B')
			) t1(item)
	)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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

