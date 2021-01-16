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

DROP TABLE "Issue1303"

