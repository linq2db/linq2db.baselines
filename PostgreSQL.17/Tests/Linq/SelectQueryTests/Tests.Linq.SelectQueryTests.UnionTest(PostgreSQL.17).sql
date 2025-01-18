BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	CURRENT_TIMESTAMP + t."Value" * Interval '1 Day',
	CURRENT_TIMESTAMP + 2 * Interval '1 Day'
FROM
	"SampleClass" t
WHERE
	t."Value" = 1
UNION
SELECT
	CURRENT_TIMESTAMP + 3 * Interval '1 Day',
	CURRENT_TIMESTAMP + 4 * Interval '1 Day'

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	v_1."Value2"
FROM
	(
		SELECT
			CURRENT_TIMESTAMP + v."Value" * Interval '1 Day' as "Value1",
			CURRENT_TIMESTAMP + 2 * Interval '1 Day' as "Value2"
		FROM
			"SampleClass" v
		WHERE
			v."Value" = 1
		UNION
		SELECT
			CURRENT_TIMESTAMP + 3 * Interval '1 Day' as "Value1",
			CURRENT_TIMESTAMP + 4 * Interval '1 Day' as "Value2"
	) v_1

