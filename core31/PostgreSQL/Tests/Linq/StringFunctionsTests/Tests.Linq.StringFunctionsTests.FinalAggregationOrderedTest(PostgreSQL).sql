﻿BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SampleClass"
(
	"Id"     Int         NOT NULL,
	"Value1" text            NULL,
	"Value2" text            NULL,
	"Value3" text            NULL,
	"Value4" VarChar(50)     NULL
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(1,'V1','V2',NULL,'V4'),
(2,NULL,'Z2',NULL,NULL),
(3,'Z1',NULL,NULL,'Z4')

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	STRING_AGG(t."Value1", ' -> ' ORDER BY t."Value1")
FROM
	"SampleClass" t

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	STRING_AGG(t."Value1", ' -> ' ORDER BY t."Value1")
FROM
	"SampleClass" t

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	STRING_AGG(t."Value1", ' -> ' ORDER BY t."Value1" DESC)
FROM
	"SampleClass" t

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	STRING_AGG(t."Value1", ' -> ' ORDER BY t."Value1" DESC)
FROM
	"SampleClass" t

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

