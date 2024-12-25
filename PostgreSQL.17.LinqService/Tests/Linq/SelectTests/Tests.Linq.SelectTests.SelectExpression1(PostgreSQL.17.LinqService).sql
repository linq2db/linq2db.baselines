BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SelectExpressionTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "SelectExpressionTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_SelectExpressionTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO "SelectExpressionTable"
(
	"ID"
)
VALUES
(
	:ID
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	1 = 1
FROM
	"SelectExpressionTable" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SelectExpressionTable"

