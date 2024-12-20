BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table1"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4723Table1"
(
	"Id"               Int  NOT NULL,
	"ExpressionMethod" text     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4723Table1"
(
	"Id",
	"ExpressionMethod"
)
VALUES
(1,NULL)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table2"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4723Table2"
(
	"Id"    Int  NOT NULL,
	"Value" text     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4723Table2"
(
	"Id",
	"Value"
)
VALUES
(1,'Value 1'),
(1,'Value 1'),
(2,'Value 2')

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	t1."Association"
FROM
	"Issue4723Table1" x
		LEFT JOIN LATERAL (
			SELECT
				"a_Association"."Value" as "Association"
			FROM
				"Issue4723Table2" "a_Association"
			WHERE
				"a_Association"."Id" = x."Id"
			LIMIT 1
		) t1 ON 1=1
WHERE
	t1."Association" IS NOT NULL AND (t1."Association" <> 'unknown' OR t1."Association" IS NULL)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table2"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table1"

