BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue681Table4"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue681Table4"
(
	"ID"    SERIAL  NOT NULL,
	"Value" Int     NOT NULL,

	CONSTRAINT "PK_Issue681Table4" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO testdata.public."Issue681Table4"
(
	"Value"
)
VALUES
(
	:Value
)
RETURNING 
	"ID"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue681Table4"

