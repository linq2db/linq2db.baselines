﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "TempTable"
(
	"ID" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "TempTable"
(
	"ID"
)
SELECT
	p."ParentID"
FROM
	"Parent" p

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t."ID"
FROM
	"Parent" p
		INNER JOIN "TempTable" t ON p."ParentID" = t."ID"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "TempTable"

