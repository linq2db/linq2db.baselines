BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4596Form"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4596Form"
(
	"Id" Int       NOT NULL,
	"C1" character NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4596Item"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4596Item"
(
	"Id"         Int  NOT NULL,
	"FormId"     Int  NOT NULL,
	"OrderIndex" Int  NOT NULL,
	"Name1"      text     NULL,
	"Name2"      text     NULL,
	"Name3"      text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	m_1.c1,
	m_1.c2,
	d."Id",
	d."FormId",
	d."OrderIndex",
	d."Name1",
	d."Name2",
	d."Name3"
FROM
	(
		SELECT
			t1."Id",
			CASE
				WHEN t1."C1" = 'T' THEN True
				ELSE False
			END as c1,
			CASE
				WHEN t1."C1" <> 'T' THEN True
				ELSE False
			END as c2
		FROM
			"Issue4596Form" t1
		LIMIT 1
	) m_1
		INNER JOIN "Issue4596Item" d ON d."FormId" = m_1."Id"
ORDER BY
	CASE
		WHEN m_1.c1 THEN d."OrderIndex"
		ELSE 0
	END,
	CASE
		WHEN m_1.c2 THEN d."Name1"
		ELSE ''
	END,
	CASE
		WHEN m_1.c2 THEN d."Name2"
		ELSE ''
	END,
	CASE
		WHEN m_1.c2 THEN d."Name3"
		ELSE ''
	END

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."C1",
	CASE
		WHEN t1."C1" = 'T' THEN True
		ELSE False
	END,
	CASE
		WHEN t1."C1" <> 'T' THEN True
		ELSE False
	END
FROM
	"Issue4596Form" t1
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4596Item"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4596Form"

