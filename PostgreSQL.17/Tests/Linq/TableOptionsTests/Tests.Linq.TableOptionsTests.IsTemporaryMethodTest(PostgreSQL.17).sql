﻿BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value",
	t2."Id",
	t2."Value",
	t3."Id",
	t3."Value"
FROM
	"TestTable" t1
		INNER JOIN "TestTable" t2 ON t1."Id" = t2."Id"
		INNER JOIN "TestTable" t3 ON t2."Id" = t3."Id"

BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

