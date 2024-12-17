BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table1"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table1"
(
	"Field1" SERIAL  NOT NULL,
	"Field2" Int     NOT NULL,

	CONSTRAINT "PK_Table1" PRIMARY KEY ("Field1")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table2"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table2"
(
	"Field2" SERIAL  NOT NULL,

	CONSTRAINT "PK_Table2" PRIMARY KEY ("Field2")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Field2"
FROM
	"Table2" t1
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			"Table1" x
		WHERE
			t1."Field2" = x."Field2" AND x."Field1"::BigInt IN (1, 2, 3)
	)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table2"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table1"

