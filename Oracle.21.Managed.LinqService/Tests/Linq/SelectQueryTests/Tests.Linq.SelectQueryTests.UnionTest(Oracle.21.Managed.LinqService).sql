BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	CURRENT_TIMESTAMP + t."Value" * INTERVAL '1' DAY,
	CURRENT_TIMESTAMP + 2 * INTERVAL '1' DAY
FROM
	"SampleClass" t
WHERE
	t."Value" = 1
UNION
SELECT
	CURRENT_TIMESTAMP + 3 * INTERVAL '1' DAY,
	CURRENT_TIMESTAMP + 4 * INTERVAL '1' DAY
FROM SYS.DUAL

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	v_1."Value2"
FROM
	(
		SELECT
			CURRENT_TIMESTAMP + v."Value" * INTERVAL '1' DAY as "Value1",
			CURRENT_TIMESTAMP + 2 * INTERVAL '1' DAY as "Value2"
		FROM
			"SampleClass" v
		WHERE
			v."Value" = 1
		UNION
		SELECT
			CURRENT_TIMESTAMP + 3 * INTERVAL '1' DAY as "Value1",
			CURRENT_TIMESTAMP + 4 * INTERVAL '1' DAY as "Value2"
		FROM SYS.DUAL
	) v_1

