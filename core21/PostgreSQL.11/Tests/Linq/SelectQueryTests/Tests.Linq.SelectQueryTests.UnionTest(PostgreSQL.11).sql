﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	CURRENT_TIMESTAMP + Cast(t."Value" as Float) * Interval '1 Day',
	CURRENT_TIMESTAMP + 2 * Interval '1 Day'
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

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	v."Value2"
FROM
	(
		SELECT
			CURRENT_TIMESTAMP + Cast(t."Value" as Float) * Interval '1 Day' as "Value1",
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
	) v

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

