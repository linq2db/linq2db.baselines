﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestTable"
(
	"Id" Int NOT NULL,
	"Fd" Int     NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

/* My Test */
INSERT INTO "TestTable" AS t1
(
	"Id",
	"Fd"
)
VALUES
(
	1,
	2
)
ON CONFLICT ("Id") DO UPDATE SET
	"Fd" = 2

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

