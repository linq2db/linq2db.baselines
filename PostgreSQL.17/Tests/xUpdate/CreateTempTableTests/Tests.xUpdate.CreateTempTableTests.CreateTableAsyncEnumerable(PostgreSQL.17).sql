-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID"
FROM
	"Parent" p

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TempTable"
(
	"ID" Int NOT NULL
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."ID"
FROM
	"Parent" p
		INNER JOIN "TempTable" t ON p."ParentID" = t."ID"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

