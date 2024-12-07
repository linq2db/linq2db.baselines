BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
VALUES
(1,100)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t_1."Id",
	t_1."Value",
	t2.cond,
	t2."Value1",
	t2."Value2"
FROM
	"SampleClass" t_1
		LEFT JOIN (
			SELECT
				t1.c1 as "Value1",
				t1.c2 as "Value2",
				1 as cond
			FROM
				(
					SELECT
						CURRENT_TIMESTAMP + t."Value" * Interval '1 Day' as c1,
						CURRENT_TIMESTAMP + 2 * Interval '1 Day' as c2
					FROM
						"SampleClass" t
					WHERE
						t."Value" = 1
					UNION
					SELECT
						CURRENT_TIMESTAMP + 3 * Interval '1 Day' as c1,
						CURRENT_TIMESTAMP + 4 * Interval '1 Day' as c2
				) t1
			LIMIT 1
		) t2 ON 1=1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

