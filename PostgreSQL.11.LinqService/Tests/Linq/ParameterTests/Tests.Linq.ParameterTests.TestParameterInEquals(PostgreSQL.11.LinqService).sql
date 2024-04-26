BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestEqualsTable1"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestEqualsTable1"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestEqualsTable2"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestEqualsTable2"
(
	"Id" Int NOT NULL,
	"FK" Int     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 0

SELECT
	t1."Id"
FROM
	"TestEqualsTable1" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TestEqualsTable2" t2
		WHERE
			t1."Id" = t2."FK" AND t2."Id" = :param
	)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestEqualsTable2"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestEqualsTable1"

