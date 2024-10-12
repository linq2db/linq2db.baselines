BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1303"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1303"
(
	"ID"     Int   NOT NULL,
	"Array"  bytea     NULL,
	"Binary" bytea     NULL,

	CONSTRAINT "PK_Issue1303" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Array Bytea(3) -- Binary
SET     @Array = E'\\x010203'::bytea
DECLARE @Binary Bytea(2) -- Binary
SET     @Binary = E'\\x0405'::bytea

INSERT INTO "Issue1303"
(
	"ID",
	"Array",
	"Binary"
)
VALUES
(
	1,
	:Array,
	:Binary
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Array",
	t1."Binary"
FROM
	"Issue1303" t1
WHERE
	t1."ID" = 1
LIMIT 2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Array",
	t1."Binary"
FROM
	"Issue1303" t1
WHERE
	t1."Array" = E'\\x010203'::bytea
LIMIT 2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Array",
	t1."Binary"
FROM
	"Issue1303" t1
WHERE
	t1."Binary" = E'\\x0405'::bytea
LIMIT 2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1303"

