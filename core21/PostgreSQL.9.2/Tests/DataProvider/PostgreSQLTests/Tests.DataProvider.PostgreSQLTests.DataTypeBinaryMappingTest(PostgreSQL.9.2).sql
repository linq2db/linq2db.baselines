BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "DataTypeBinaryMapping"
(
	"Binary" bytea NOT NULL
)

BeforeExecute
INSERT BULK "DataTypeBinaryMapping"(Binary

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."Binary"
FROM
	"DataTypeBinaryMapping" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "DataTypeBinaryMapping"

