BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t_1."Id",
	t_1."Value",
	t2."Value1",
	t2."Value2"
FROM
	"SampleClass" t_1
		LEFT JOIN (
			SELECT
				t1."Value1",
				t1."Value2"
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
						CURRENT_TIMESTAMP + 3 * INTERVAL '1' DAY as "Value1",
						CURRENT_TIMESTAMP + 4 * INTERVAL '1' DAY as "Value2"
					FROM SYS.DUAL
				) t1
			FETCH NEXT 1 ROWS ONLY
		) t2 ON 1=1

