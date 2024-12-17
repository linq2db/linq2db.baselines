BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 100

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
				t1."Value1",
				t1."Value2",
				1 as cond
			FROM
				(
					SELECT
						CURRENT_TIMESTAMP + t."Value" * Interval '1 Day' as "Value1",
						CURRENT_TIMESTAMP + 2 * Interval '1 Day' as "Value2"
					FROM
						"SampleClass" t
					WHERE
						t."Value" = 1
					UNION
					SELECT
						CURRENT_TIMESTAMP + 3 * Interval '1 Day' as "Value1",
						CURRENT_TIMESTAMP + 4 * Interval '1 Day' as "Value2"
				) t1
			LIMIT 1
		) t2 ON 1=1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

