﻿BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "IsTemporaryTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"IsTemporaryTable" t1

BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "IsTemporaryTable"

