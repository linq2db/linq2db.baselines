BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."Value",
	s_1."Key_1",
	s_1."SecondValue"
FROM
	"SampleClass" t
		INNER JOIN LATERAL (
			SELECT
				s."Key_1",
				s."SecondValue"
			FROM
				(
					SELECT
						1 as "Key_1",
						3 as "SecondValue"
					WHERE
						1 = t."Id"
				) s
		) s_1 ON 1=1

