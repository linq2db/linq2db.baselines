BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "SampleClass" ("Id", "Value") VALUES (1,100)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t."Id",
	t."Value",
	1,
	3
FROM
	"SampleClass" t
		INNER JOIN (
			SELECT
				1 as "Key_1"
			FROM SYS.DUAL
		) s ON s."Key_1" = t."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "SampleClass"

