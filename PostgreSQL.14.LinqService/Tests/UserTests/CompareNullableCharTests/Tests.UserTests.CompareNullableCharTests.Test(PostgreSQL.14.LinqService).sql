BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table1"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table1"
(
	"Field1" SERIAL     NOT NULL,
	"Foeld2" character      NULL,

	CONSTRAINT "PK_Table1" PRIMARY KEY ("Field1")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	current_1."Field1",
	previous."Field1"
FROM
	"Table1" current_1,
	"Table1" previous
WHERE
	current_1."Foeld2" = previous."Foeld2" OR current_1."Foeld2" IS NULL AND previous."Foeld2" IS NULL

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table1"

