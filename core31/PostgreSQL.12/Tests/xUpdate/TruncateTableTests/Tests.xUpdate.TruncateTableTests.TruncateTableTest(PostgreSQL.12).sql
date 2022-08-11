﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestTrun"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "TestTrun"
(
	"ID"     Int             NOT NULL,
	"Field1" decimal(29, 10) NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

TRUNCATE TABLE "TestTrun"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE "TestTrun"

