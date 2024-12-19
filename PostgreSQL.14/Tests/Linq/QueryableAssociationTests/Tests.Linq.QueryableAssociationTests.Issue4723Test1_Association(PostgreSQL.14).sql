BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table1"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4723Table1"
(
	"Id"               Int  NOT NULL,
	"ExpressionMethod" text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Issue4723Table1"
(
	"Id",
	"ExpressionMethod"
)
VALUES
(1,NULL)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table2"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4723Table2"
(
	"Id"    Int  NOT NULL,
	"Value" text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t2."Id",
	(
		SELECT
			se."Value"
		FROM
			"Issue4723Table2" se
		WHERE
			se."Id" = t2."Id"
		LIMIT 1
	),
	t1."Association"
FROM
	"Issue4723Table1" t2
		LEFT JOIN LATERAL (
			SELECT
				"a_Association"."Value" as "Association"
			FROM
				"Issue4723Table2" "a_Association"
			WHERE
				"a_Association"."Id" = t2."Id"
			LIMIT 1
		) t1 ON 1=1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table2"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table1"

