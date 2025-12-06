-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

-- PostgreSQL.15 PostgreSQL

CREATE TABLE "TestTable"
(
	"ID"        SERIAL     NOT NULL,
	"Field1"    text           NULL,
	"Field2"    text           NULL,
	"CreatedOn" TimeStamp      NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("ID")
)

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Field1",
	t1."Field2",
	t1."CreatedOn"
FROM
	"TestTable" t1

-- PostgreSQL.15 PostgreSQL

DROP TABLE "TestTable"

