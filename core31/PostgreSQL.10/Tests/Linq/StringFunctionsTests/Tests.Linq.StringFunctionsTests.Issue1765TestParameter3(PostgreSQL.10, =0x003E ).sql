﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SampleClass"
(
	"Id"     Int         NOT NULL,
	"Value1" text            NULL,
	"Value2" text            NULL,
	"Value3" VarChar(50)     NULL,
	"Value4" VarChar(50)     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @separator Text(4) -- String
SET     @separator = ' => '

SELECT
	STRING_AGG(t1."Value4", :separator ORDER BY t1."Value3" DESC, t1."Value4")
FROM
	"SampleClass" t1
GROUP BY
	t1."Id",
	t1."Value4"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

