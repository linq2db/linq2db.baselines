BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
VALUES
(1,100)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t2."Value1",
	t2."Value2"
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
			t1."Value1",
			t1."Value2"
		FROM
			(
				SELECT
					CURRENT_TIMESTAMP + 3 * Interval '1 Day' as "Value1",
					CURRENT_TIMESTAMP + 4 * Interval '1 Day' as "Value2"
			) t1
	) t2
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t."Id",
	t."Value"
FROM
	"SampleClass" t

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "SampleClass"

