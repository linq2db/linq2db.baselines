BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "TestTable"
(
	"ID"        SERIAL     NOT NULL,
	"Field1"    text           NULL,
	"Field2"    text           NULL,
	"CreatedOn" TimeStamp      NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "TestTable"

