BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	CURRENT_TIMESTAMP + t."Value" * INTERVAL '1' DAY,
	CURRENT_TIMESTAMP + 2 * INTERVAL '1' DAY
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

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	v."Value2"
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
	) v

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "SampleClass"

