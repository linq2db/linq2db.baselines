BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3757Level1"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3757Level1"
(
	"ID"     Int     NOT NULL,
	"ValS"   text        NULL,
	"ValB"   Boolean     NULL,
	"ValInt" Int         NULL,

	CONSTRAINT "PK_Issue3757Level1" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3757Level2"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3757Level2"
(
	"ID"       Int     NOT NULL,
	"ParentId" Int     NOT NULL,
	"ValS"     text        NULL,
	"ValB"     Boolean     NULL,
	"ValInt"   Int         NULL,

	CONSTRAINT "PK_Issue3757Level2" PRIMARY KEY ("ID")
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."ID",
	m_1."ValS",
	d."ID",
	d."ValB",
	d."ValInt"
FROM
	"Issue3757Level1" m_1
		INNER JOIN "Issue3757Level2" d ON m_1."ID" = d."ParentId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	l1."ID",
	l1."ValB",
	l1."ValS",
	l1."ValInt"
FROM
	"Issue3757Level1" l1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3757Level2"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3757Level1"

