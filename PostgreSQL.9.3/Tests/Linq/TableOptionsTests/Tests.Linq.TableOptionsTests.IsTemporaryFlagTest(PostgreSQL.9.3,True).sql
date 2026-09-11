-- PostgreSQL.9.3 PostgreSQL
CREATE TEMPORARY TABLE "IsTemporaryTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_IsTemporaryTable" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Value"
FROM
	"IsTemporaryTable" t1

-- PostgreSQL.9.3 PostgreSQL
DROP TABLE IF EXISTS "IsTemporaryTable"

