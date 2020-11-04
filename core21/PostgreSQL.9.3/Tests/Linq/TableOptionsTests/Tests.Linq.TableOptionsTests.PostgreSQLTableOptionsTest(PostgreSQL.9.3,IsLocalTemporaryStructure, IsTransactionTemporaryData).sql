BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT DELETE ROWS

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "TestTable"

