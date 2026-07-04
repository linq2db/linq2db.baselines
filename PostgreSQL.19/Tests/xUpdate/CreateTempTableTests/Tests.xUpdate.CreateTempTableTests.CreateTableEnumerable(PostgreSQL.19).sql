-- PostgreSQL.19 PostgreSQL13

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.19 PostgreSQL13

SELECT
	p."ParentID"
FROM
	"Parent" p

-- PostgreSQL.19 PostgreSQL13

CREATE TABLE IF NOT EXISTS "TempTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("ID")
)

-- PostgreSQL.19 PostgreSQL13

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

-- PostgreSQL.19 PostgreSQL13

SELECT
	t."ID"
FROM
	"Parent" p
		INNER JOIN "TempTable" t ON p."ParentID" = t."ID"

-- PostgreSQL.19 PostgreSQL13

DROP TABLE IF EXISTS "TempTable"

