BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "SampleClass"
(
	"Id"     Int         NOT NULL,
	"Value1" VarChar(50)     NULL,
	"Value2" VarChar(50)     NULL,
	"Value3" VarChar(50)     NULL,
	"Value4" VarChar(50)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "SampleClass" ("Id", "Value1", "Value2", "Value3", "Value4") VALUES (1,'V1','V2',NULL,'V4')
	INTO "SampleClass" ("Id", "Value1", "Value2", "Value3", "Value4") VALUES (2,NULL,'Z2',NULL,NULL)
	INTO "SampleClass" ("Id", "Value1", "Value2", "Value3", "Value4") VALUES (3,'Z1',NULL,NULL,'Z4')
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	LISTAGG(t."Value1", ' -> ') WITHIN GROUP (ORDER BY t."Value1")
FROM
	"SampleClass" t

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	LISTAGG(t."Value1", ' -> ') WITHIN GROUP (ORDER BY t."Value1")
FROM
	"SampleClass" t

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	LISTAGG(t."Value1", ' -> ') WITHIN GROUP (ORDER BY t."Value1" DESC)
FROM
	"SampleClass" t

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	LISTAGG(t."Value1", ' -> ') WITHIN GROUP (ORDER BY t."Value1" DESC)
FROM
	"SampleClass" t

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "SampleClass"

