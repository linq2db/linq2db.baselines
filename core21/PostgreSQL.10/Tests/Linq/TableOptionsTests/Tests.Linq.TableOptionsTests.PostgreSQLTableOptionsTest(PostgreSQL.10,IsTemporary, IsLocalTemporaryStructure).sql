﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "TestTable"

