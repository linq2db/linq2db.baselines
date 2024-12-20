BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestIssue358Class"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestIssue358Class"
(
	"MyEnum"  Int     NULL,
	"MyEnum2" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."MyEnum",
	p."MyEnum2"
FROM
	"TestIssue358Class" p
WHERE
	p."MyEnum2" NOT IN (1)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestIssue358Class"

