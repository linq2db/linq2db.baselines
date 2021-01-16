﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
VALUES
(1,100)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

