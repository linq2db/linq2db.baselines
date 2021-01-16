BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TEMPORARY TABLE "IsTemporaryTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "IsTemporaryTable"

