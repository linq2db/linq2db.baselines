BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "TestEqualsTable1"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "TestEqualsTable2"
(
	"Id" Int NOT NULL,
	"FK" Int     NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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
			t1."Id" = t2."FK" AND t2."Id" IS NULL
	)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "TestEqualsTable2"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "TestEqualsTable1"

