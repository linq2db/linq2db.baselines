﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TABLE IF NOT EXISTS "TempTable"
(
	"ID" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO "TempTable"
(
	"ID"
)
SELECT
	p."ParentID"
FROM
	"Parent" p

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t."ID"
FROM
	"Parent" p
		INNER JOIN "TempTable" t ON p."ParentID" = t."ID"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

