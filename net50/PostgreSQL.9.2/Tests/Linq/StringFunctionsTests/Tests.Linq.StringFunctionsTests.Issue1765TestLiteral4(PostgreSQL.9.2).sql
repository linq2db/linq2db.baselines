BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "SampleClass"
(
	"Id"     Int         NOT NULL,
	"Value1" text            NULL,
	"Value2" text            NULL,
	"Value3" text            NULL,
	"Value4" VarChar(50)     NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

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
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Max(t1."Value4"),
	STRING_AGG(t1."Value4", ' -> ')
FROM
	"SampleClass" t1
GROUP BY
	t1."Id",
	t1."Value4"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "SampleClass"

