BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TransactionEntity"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TransactionEntity"
(
	"Id"      uuid      NOT NULL,
	"ValidOn" TimeStamp NOT NULL,

	CONSTRAINT "PK_TransactionEntity" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "LineEntity"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "LineEntity"
(
	"Id"            uuid    NOT NULL,
	"TransactionId" uuid    NOT NULL,
	"Amount"        decimal NOT NULL,
	"Currency"      text        NULL,

	CONSTRAINT "PK_LineEntity" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
			 EXISTS (
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	x."ValidOn"
FROM
	"TransactionEntity" x
WHERE
	 EXISTS (
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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "LineEntity"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TransactionEntity"

