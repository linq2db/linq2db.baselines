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
DECLARE @take Int32
SET     @take = 1

SELECT
	t2."Value1",
	t2."Value2"
FROM
	(
		SELECT
			CURRENT_TIMESTAMP + t."Value" * INTERVAL '1' DAY as "Value1",
			CURRENT_TIMESTAMP + 2 * INTERVAL '1' DAY as "Value2"
		FROM
			"SampleClass" t
		WHERE
			t."Value" = 1
		UNION
		SELECT
			t1."Value1",
			t1."Value2"
		FROM
			(
				SELECT
					CURRENT_TIMESTAMP + 3 * INTERVAL '1' DAY as "Value1",
					CURRENT_TIMESTAMP + 4 * INTERVAL '1' DAY as "Value2"
				FROM SYS.DUAL
			) t1
	) t2
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t."Id",
	t."Value"
FROM
	"SampleClass" t

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "SampleClass"

