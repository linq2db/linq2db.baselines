BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table1"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4723Table1"
(
	"Id"               Int  NOT NULL,
	"ExpressionMethod" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4723Table1"
(
	"Id",
	"ExpressionMethod"
)
VALUES
(1,NULL)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4723Table2"
(
	"Id"    Int  NOT NULL,
	"Value" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	(
		SELECT
			se."Value"
		FROM
			"Issue4723Table2" se
		WHERE
			se."Id" = t1."Id"
		LIMIT 1
	)
FROM
	"Issue4723Table1" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4723Table1"

