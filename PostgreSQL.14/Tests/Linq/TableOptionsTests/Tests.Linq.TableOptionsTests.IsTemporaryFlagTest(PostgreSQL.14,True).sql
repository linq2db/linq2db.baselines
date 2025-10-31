-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TEMPORARY TABLE "IsTemporaryTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"IsTemporaryTable" t1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "IsTemporaryTable"

