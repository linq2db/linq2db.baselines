BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestEqualsTable1"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestEqualsTable1"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestEqualsTable2"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestEqualsTable2"
(
	"Id" Int NOT NULL,
	"FK" Int     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
			"TestEqualsTable2" "a_Relation"
		WHERE
			t1."Id" = "a_Relation"."FK" AND "a_Relation"."Id" = :param
	)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestEqualsTable2"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestEqualsTable1"

