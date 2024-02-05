BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DataTypeBinaryMapping"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "DataTypeBinaryMapping"
(
	"Binary" bytea NOT NULL
)

BeforeExecute
INSERT BULK "DataTypeBinaryMapping"(Binary)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."Binary"
FROM
	"DataTypeBinaryMapping" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DataTypeBinaryMapping"

