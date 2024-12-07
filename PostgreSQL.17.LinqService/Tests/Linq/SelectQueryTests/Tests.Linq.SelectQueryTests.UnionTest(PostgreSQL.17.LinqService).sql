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

DROP TABLE IF EXISTS "SampleClass"

