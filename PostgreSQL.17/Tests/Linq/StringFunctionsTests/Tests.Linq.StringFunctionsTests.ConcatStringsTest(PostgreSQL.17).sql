BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "SampleClass"
(
	"Id"     Int         NOT NULL,
	"Value1" text            NULL,
	"Value2" text            NULL,
	"Value3" VarChar(50)     NULL,
	"Value4" VarChar(50)     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	CONCAT_WS(' -> ', t."Value2")
FROM
	"SampleClass" t

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	CONCAT_WS(' -> ', t."Value3")
FROM
	"SampleClass" t

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	CONCAT_WS(' -> ', t."Value3", t."Value1", t."Value2")
FROM
	"SampleClass" t

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	CONCAT_WS(' -> ', t."Value3", t."Value3")
FROM
	"SampleClass" t

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

