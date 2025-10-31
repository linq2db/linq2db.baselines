-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value3"
FROM
	(
		SELECT
			t."Id",
			t."Value1",
			t."Value2",
			t."Value3"
		FROM
			"SampleData" t
		WHERE
			(t."Id"::decimal % 2)::decimal = 0
		UNION ALL
		SELECT
			t_1."Id",
			t_1."Value1",
			t_1."Value2",
			t_1."Value3"
		FROM
			"SampleData" t_1
		WHERE
			(t_1."Id"::decimal % 2)::decimal = 0
	) t1
EXCEPT ALL
SELECT
	t_2."Id",
	t_2."Value1",
	t_2."Value2",
	t_2."Value3"
FROM
	"SampleData" t_2
WHERE
	(t_2."Id"::decimal % 4)::decimal = 0

