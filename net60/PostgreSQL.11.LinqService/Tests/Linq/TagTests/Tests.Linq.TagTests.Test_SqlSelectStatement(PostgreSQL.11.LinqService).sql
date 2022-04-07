﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "TestTable"
(
	"Id" Int NOT NULL,
	"Fd" Int     NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

/* My Test */
SELECT
	t1."Id",
	t1."Fd"
FROM
	"TestTable" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

