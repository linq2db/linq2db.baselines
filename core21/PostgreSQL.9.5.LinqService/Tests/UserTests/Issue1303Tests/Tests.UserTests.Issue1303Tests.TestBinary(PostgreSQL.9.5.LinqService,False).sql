BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Issue1303"
(
	"ID"     Int   NOT NULL,
	"Array"  bytea     NULL,
	"Binary" bytea     NULL,

	CONSTRAINT "PK_Issue1303" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Array_1 Bytea(3) -- Binary
SET     @Array_1 = E'\\x010203'
DECLARE @Binary_1 Bytea(2) -- Binary
SET     @Binary_1 = E'\\x0405'

INSERT INTO "Issue1303"
(
	"ID",
	"Array",
	"Binary"
)
VALUES
(
	1,
	:Array_1,
	:Binary_1
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."ID",
	t1."Array",
	t1."Binary"
FROM
	"Issue1303" t1
WHERE
	t1."ID" = 1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Array_2 Bytea(3) -- Binary
SET     @Array_2 = E'\\x010203'
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."ID",
	t1."Array",
	t1."Binary"
FROM
	"Issue1303" t1
WHERE
	t1."Array" = :Array_2
LIMIT :take

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Binary_2 Bytea(2) -- Binary
SET     @Binary_2 = E'\\x0405'
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."ID",
	t1."Array",
	t1."Binary"
FROM
	"Issue1303" t1
WHERE
	t1."Binary" = :Binary_2
LIMIT :take

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "Issue1303"

