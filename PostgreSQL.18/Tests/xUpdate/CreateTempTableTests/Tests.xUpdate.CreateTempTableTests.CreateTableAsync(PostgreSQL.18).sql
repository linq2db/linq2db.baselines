-- PostgreSQL.18 PostgreSQL12

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.18 PostgreSQL12

CREATE TABLE IF NOT EXISTS "TempTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("ID")
)

-- PostgreSQL.18 PostgreSQL12

INSERT INTO "TempTable"
(
	"ID"
)
SELECT
	p."ParentID"
FROM
	"Parent" p

-- PostgreSQL.18 PostgreSQL12

SELECT
	t."ID"
FROM
	"Parent" p
		INNER JOIN "TempTable" t ON p."ParentID" = t."ID"

-- PostgreSQL.18 PostgreSQL12

DROP TABLE IF EXISTS "TempTable"

