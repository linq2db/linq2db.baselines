-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

CREATE TEMPORARY TABLE "IsTemporaryTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_IsTemporaryTable" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	t1."Id",
	t1."Value"
FROM
	"IsTemporaryTable" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

DROP TABLE IF EXISTS "IsTemporaryTable"

