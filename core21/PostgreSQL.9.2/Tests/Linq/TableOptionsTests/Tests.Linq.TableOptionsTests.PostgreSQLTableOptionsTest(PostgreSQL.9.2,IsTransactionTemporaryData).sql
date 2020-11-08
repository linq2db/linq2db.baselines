BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT DELETE ROWS

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "TestTable"

