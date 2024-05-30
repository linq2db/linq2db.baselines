BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DataTypeBinaryMapping"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "DataTypeBinaryMapping"
(
	"Binary" bytea NOT NULL
)

BeforeExecute
INSERT BULK "DataTypeBinaryMapping"(Binary)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Binary"
FROM
	"DataTypeBinaryMapping" t1
LIMIT 2

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DataTypeBinaryMapping"

