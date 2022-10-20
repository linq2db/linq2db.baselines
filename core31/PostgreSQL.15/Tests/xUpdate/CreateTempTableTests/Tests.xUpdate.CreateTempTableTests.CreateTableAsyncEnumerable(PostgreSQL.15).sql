BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID"
FROM
	"Parent" p

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

CREATE TABLE IF NOT EXISTS "TempTable"
(
	"ID" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

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

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."ID"
FROM
	"Parent" p
		INNER JOIN "TempTable" t ON p."ParentID" = t."ID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "TempTable"

