BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	CURRENT_TIMESTAMP + Cast(t."Value" as Float) * INTERVAL '1' DAY,
	CURRENT_TIMESTAMP + 2D * INTERVAL '1' DAY
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
			CURRENT_TIMESTAMP + 3D * INTERVAL '1' DAY as "Value1",
			CURRENT_TIMESTAMP + 4D * INTERVAL '1' DAY as "Value2"
		FROM SYS.DUAL
	) t1

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	v."Value2"
FROM
	(
		SELECT
			CURRENT_TIMESTAMP + Cast(t."Value" as Float) * INTERVAL '1' DAY as "Value1",
			CURRENT_TIMESTAMP + 2D * INTERVAL '1' DAY as "Value2"
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
					CURRENT_TIMESTAMP + 3D * INTERVAL '1' DAY as "Value1",
					CURRENT_TIMESTAMP + 4D * INTERVAL '1' DAY as "Value2"
				FROM SYS.DUAL
			) t1
	) v

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

