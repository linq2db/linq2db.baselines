﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "TempTable"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL (asynchronously)

CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL (asynchronously)

DROP TABLE "TempTable"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "TempTable"

