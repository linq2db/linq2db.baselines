﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value",
	t2."Id",
	t2."Value",
	t3."Id",
	t3."Value"
FROM
	"TestTable" t1
		CROSS JOIN "TestTable" t2
		INNER JOIN "TestTable" t3 ON t2."Id" = t3."Id"
WHERE
	t1."Id" = t2."Id"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

