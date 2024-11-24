BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table1"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4723Table1"
(
	"Id"               Int  NOT NULL,
	"ExpressionMethod" text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @ExpressionMethod Text -- String
SET     @ExpressionMethod = NULL

INSERT INTO "Issue4723Table1"
(
	"Id",
	"ExpressionMethod"
)
VALUES
(
	:Id,
	:ExpressionMethod
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table2"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4723Table2"
(
	"Id"    Int  NOT NULL,
	"Value" text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Text(7) -- String
SET     @Value = 'Value 1'

INSERT INTO "Issue4723Table2"
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Text(7) -- String
SET     @Value = 'Value 1'

INSERT INTO "Issue4723Table2"
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Text(7) -- String
SET     @Value = 'Value 2'

INSERT INTO "Issue4723Table2"
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table2"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table1"

