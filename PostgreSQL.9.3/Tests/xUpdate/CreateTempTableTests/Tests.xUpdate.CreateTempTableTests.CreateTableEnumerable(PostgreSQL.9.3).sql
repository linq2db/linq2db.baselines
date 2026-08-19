-- PostgreSQL.9.3 PostgreSQL
DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."ParentID"
FROM
	"Parent" p

-- PostgreSQL.9.3 PostgreSQL
CREATE TABLE IF NOT EXISTS "TempTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("ID")
)

-- PostgreSQL.9.3 PostgreSQL
INSERT INTO "TempTable"
(
	"ID"
)
VALUES
(2),
(3),
(4),
(5),
(6),
(1),
(7)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."ID"
FROM
	"Parent" p
		INNER JOIN "TempTable" t ON p."ParentID" = t."ID"

-- PostgreSQL.9.3 PostgreSQL
DROP TABLE IF EXISTS "TempTable"

