BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "TestTable"
(
	"ID"        SERIAL       NOT NULL,
	"Field1"    VarChar(50)      NULL,
	"Field2"    VarChar          NULL,
	"CreatedOn" TimeStamp        NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Field1",
	t1."Field2",
	t1."CreatedOn"
FROM
	"TestTable" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE "TestTable"

