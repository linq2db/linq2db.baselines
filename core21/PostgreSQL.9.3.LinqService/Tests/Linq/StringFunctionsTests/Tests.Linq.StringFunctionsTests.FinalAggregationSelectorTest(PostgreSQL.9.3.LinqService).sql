BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "SampleClass"
(
	"Id"     Int         NOT NULL,
	"Value1" text            NULL,
	"Value2" text            NULL,
	"Value3" text            NULL,
	"Value4" VarChar(50)     NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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
-- PostgreSQL.9.3 PostgreSQL

SELECT
	STRING_AGG(t1."Value1", ' -> ')
FROM
	"SampleClass" t1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "SampleClass"

